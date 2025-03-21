-- Create the ecommerce database and select it
CREATE DATABASE IF NOT EXISTS `ecom`;
USE `ecom`;

-- Disable foreign key checks temporarily for a smooth creation process
SET FOREIGN_KEY_CHECKS = 0;

-- Customer table
DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` VARCHAR(12) NOT NULL,
  `customer_zip_code_prefix` VARCHAR(5) NOT NULL,
  `customer_city` VARCHAR(100) NOT NULL,
  `customer_state` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`customer_id`)
);

-- Insert data into the customer table
INSERT INTO `customer` VALUES
('Me31iBBB7RhP', 61920, 'salto do jacui', 'RS'),
('OtS0cpcNAw7Y', 64808, 'indaiatuba', 'SP'),
('ZbtWFKy1Vu7M', 97546, 'sao paulo', 'SP'),
('6BML2CY3CttC', 7955, 'belo horizonte', 'MG'),
('rst6jVYwXU0G', 4696, 'cruzeiro', 'SP'),
('JVtNmV3shrpL', 12305, 'juiz de fora', 'MG'),
('2j7hygKmENzY', 5894, 'curitiba', 'PR'),
('mMTvwg7cVyly', 87525, 'sao goncalo', 'RJ'),
('NZy4XTzpszMz', 2180, 'volta redonda', 'RJ'),
('rGupmABl4xp5', 6142, 'embu-guacu', 'SP'),
('MIn6giXgKR7y', 44720, 'contagem', 'MG'),
('xLODjhZE72AC', 88101, 'curvelo', 'MG'),
('O8JdJHkIn4EY', 8375, 'rolandia', 'PR'),
('pXK5qBhaeFH0', 79077, 'sao paulo', 'SP'),
('LSfp9GBrmMDn', 92323, 'santos', 'SP'),
('hrU9kML7W2xm', 58027, 'rio de janeiro', 'RJ'),
('xpLpgPvmaw5j', 63610, 'rio de janeiro', 'RJ'),
('hdF9uUhnZHpB', 45350, 'brasilia', 'DF'),
('Fb3gciqWyKJ7', 83203, 'porto alegre', 'RS'),
('Yrtun6kIRFrZ', 37405, 'goiania', 'GO'),
('4ETiFFGirGBF', 7600, 'espera feliz', 'MG'),
('EpT1DuM6talt', 1136, 'blumenau', 'SC'),
('BqIV06RYXbKc', 58625, 'pindamonhangaba', 'SP'),
('FNQRs4bkNNn0', 11432, 'rio de janeiro', 'RJ'),
('jokhXydCLwSg', 4708, 'apuarema', 'BA'),
('AL9CWLBBe7zX', 23082, 'fortaleza', 'CE'),
('HCSN2sal5qLk', 30642, 'salvador', 'BA'),
('4Bktc9zo4g0V', 41334, 'sao goncalo', 'RJ'),
('IqGkUKlkaSu5', 95575, 'rio de janeiro', 'RJ'),
('NERPfQqnFeQP', 68903, 'sao paulo', 'SP'),
('ve5kqlKoTbdQ', 23082, 'fortaleza', 'CE'),
('gx6AIVfk6ynZ', 69079, 'cafelandia', 'PR'),
('tjLCu8Kmg1s9', 38400, 'santa maria de jetiba', 'ES'),
('WR4dUW3wycGo', 55745, 'novo repartimento', 'PA'),
('yZHcrO47lkeJ', 5436, 'miguel pereira', 'RJ'),
('9qGv5Yhq95GW', 11711, 'pirapora', 'MG'),
('3fuj5Bs9Bn8L', 46550, 'sao paulo', 'SP'),
('q6QpKuozsUkj', 78335, 'pouso alegre', 'MG');

-- Seller table
DROP TABLE IF EXISTS seller;
CREATE TABLE IF NOT EXISTS `seller` (
  `seller_id` VARCHAR(15) NOT NULL,
  `seller_zip_code_prefix` VARCHAR(5) NOT NULL,
  `seller_city` VARCHAR(100) NOT NULL,
  `seller_state` VARCHAR(2) NOT NULL,
  `seller_rating` DECIMAL(2,1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`seller_id`)
);

-- Insert data into the seller table
INSERT INTO `seller` VALUES 
('A1B2C3D4E5F6', '12345', 'Springfield', 'IL', 4.5),
('G7H8I9J0K1L2', '23456', 'Riverside', 'CA', 5.0),
('M3N4O5P6Q7R8', '34567', 'Greenwood', 'IN', 4.7),
('S9T0U1V2W3X4', '45678', 'Lakeview', 'TX', 3.5),
('Y5Z6A7B8C9D0', '56789', 'Mapleton', 'UT', 3.9),
('E1F2G3H4I5J6', '67890', 'Hillcrest', 'NY', 2.9),
('K7L8M9N0O1P2', '78901', 'Oakwood', 'FL', 4.6),
('Q3R4S5T6U7V8', '89012', 'Pineville', 'NC', 3.8),
('W9X0Y1Z2A3B4', '90123', 'Silver Lake', 'WA', 4.6),
('C5D6E7F8G9H0', '01234', 'Bayside', 'OR', 5.0),
('A3B4C5D6E7F8', '54321', 'Clearwater', 'FL', 4.7),
('K1L2M3N4O5P6', '67890', 'Cedar Hill', 'TX', 4.3),
('R8S9T0U1V2W3', '13579', 'Highland Park', 'IL', 5.0),
('X4Y5Z6A7B8C9', '24680', 'Fox River', 'WI', 4.9),
('Q6R7S8T9U0V1', '31415', 'Rosewood', 'PA', 4.0),
('J1K2L3M4N5O6', '27182', 'Valley Forge', 'PA', 3.0),
('F3G4H5I6J7K8', '16171', 'Blue Ridge', 'GA', 3.5),
('A9B0C1D2E3F4', '98765', 'Sunset Valley', 'TX', 3.6),
('L5M6N7O8P9Q0', '75309', 'Mountainview', 'CO', 1.0),
('R1S2T3U4V5W6', '86420', 'Lakeside', 'MI', 4.4),
('B6C7D8E9F0G1', '12340', 'Meadowbrook', 'KY', 4.2),
('H2J3K4L5M6N7', '43215', 'Ridgefield', 'CT', 3.1),
('P8Q9R0S1T2U3', '67856', 'Brookstone', 'NV', 3.9),
('V4W5X6Y7Z8A9', '21078', 'Bridgewood', 'MD', 4.8),
('D2E3F4G5H6I7', '56321', 'Lakewood', 'WI', 4.1),
('J6K7L8M9N0O1', '09876', 'Parkdale', 'MO', 3.7),
('Q4R5S6T7U8V9', '11011', 'Hilltop', 'OH', 2.9),
('W7X8Y9Z0A1B2', '93210', 'Evergreen', 'SC', 3.8),
('B8C9D0E1F2G3', '54732', 'Northridge', 'MN', 4.5),
('F9G0H1I2J3K4', '12458', 'Riverside', 'NE', 4.7),
('O3P4Q5R6S7T8', '10982', 'Willowbrook', 'KS', 3.4),
('L9M0N1O2P3Q4', '90231', 'Parkview', 'TN', 2.6),
('T8U9V0W1X2Y3', '37129', 'Pinecrest', 'MS', 4.2),
('Y1Z2A3B4C5D6', '44121', 'Bayshore', 'AL', 4.3),
('N5O6P7Q8R9S0', '28117', 'Mountainview', 'NC', 3.2),
('M8N9O0P1Q2R3', '31001', 'Greenfield', 'AR', 4.0),
('A7B8C9D0E1F2', '10999', 'Brookfield', 'MA', 4.6),
('H6I7J8K9L0M1', '30549', 'Westfield', 'GA', 3.1),
('U2V3W4X5Y6Z7', '20785', 'Rockport', 'MD', 4.4),
('K4L5M6N7O8P9', '41234', 'Oakwood', 'VT', 3.9),
('I5J6K7L8M9N0', '53321', 'Woodfield', 'MT', 3.3),
('R7S8T9U0V1W2', '62433', 'Lakeside', 'IA', 3.8),
('C1D2E3F4G5H6', '55511', 'Riverdale', 'SD', 4.1),
('Z8A9B0C1D2E3', '43210', 'Cedarwood', 'ME', 2.7),
('G9H0I1J2K3L4', '40123', 'Stonebrook', 'OK', 3.9),
('M4N5O6P7Q8R9', '78945', 'Pinehurst', 'NH', 4.0),
('L1M2N3O4P5Q6', '65000', 'Edgewood', 'WV', 3.5),
('B5C6D7E8F9G0', '74011', 'Rosewood', 'NM', 3.6),
('T2U3V4W5X6Y7', '88100', 'Elk Grove', 'WY', 4.3),
('P9Q0R1S2T3U4', '22193', 'Glendale', 'DC', 3.4);


-- Product table
DROP TABLE IF EXISTS product;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` VARCHAR(15) NOT NULL,
  `product_category_name` VARCHAR(50) NOT NULL,
  `product_weight_g` INT NOT NULL,
  `product_length_cm` DECIMAL(10,2) NOT NULL,
  `product_height_cm` DECIMAL(10,2) NOT NULL,
  `product_width_cm` DECIMAL(10,2) NOT NULL,
  `seller_id` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`product_id`),
  FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
);

-- Insert data into the product table
-- Insert data into the product table
INSERT INTO `product` VALUES 
('1slxdgbgWFax', 'toys', 50, 16.00, 5.00, 11.00, 'A1B2C3D4E5F6'),
('77PgsiElQLeB', 'electronics', 200, 21.00, 7.00, 14.00, 'G7H8I9J0K1L2'),
('A1B2C3D4E5F7', 'home', 150, 30.00, 10.00, 20.00, 'M3N4O5P6Q7R8'),
('G7H8I9J0K1L3', 'clothing', 300, 25.00, 15.00, 5.00, 'S9T0U1V2W3X4'),
('M3N4O5P6Q7R9', 'books', 400, 22.00, 2.00, 15.00, 'Y5Z6A7B8C9D0'),
('S9T0U1V2W3X5', 'toys', 60, 12.00, 4.00, 8.00, 'E1F2G3H4I5J6'),
('Y5Z6A7B8C9D1', 'electronics', 350, 28.00, 6.00, 18.00, 'K7L8M9N0O1P2'),
('E1F2G3H4I5J7', 'home', 120, 18.00, 7.00, 12.00, 'Q3R4S5T6U7V8'),
('K7L8M9N0O1P3', 'clothing', 450, 20.00, 5.00, 10.00, 'W9X0Y1Z2A3B4'),
('Q3R4S5T6U7V9', 'books', 100, 15.00, 3.00, 6.00, 'C5D6E7F8G9H0'),
('C5D6E7F8G9H1', 'toys', 80, 17.00, 8.00, 9.00, 'A3B4C5D6E7F8'),
('A3B4C5D6E7F9', 'electronics', 150, 19.00, 6.00, 14.00, 'K1L2M3N4O5P6'),
('K1L2M3N4O5P7', 'home', 300, 33.00, 10.00, 22.00, 'R8S9T0U1V2W3'),
('R8S9T0U1V2W4', 'clothing', 90, 20.00, 4.00, 7.00, 'X4Y5Z6A7B8C9'),
('X4Y5Z6A7B8C1', 'books', 210, 25.00, 2.00, 10.00, 'Q6R7S8T9U0V1'),
('Q6R7S8T9U0V2', 'toys', 110, 22.00, 5.00, 9.00, 'J1K2L3M4N5O6'),
('J1K2L3M4N5O7', 'electronics', 500, 30.00, 15.00, 15.00, 'F3G4H5I6J7K8'),
('F3G4H5I6J7K9', 'home', 250, 20.00, 10.00, 12.00, 'A9B0C1D2E3F4'),
('A9B0C1D2E3F5', 'clothing', 340, 27.00, 7.00, 16.00, 'L5M6N7O8P9Q0'),
('L5M6N7O8P9Q1', 'books', 130, 18.00, 4.00, 14.00, 'R1S2T3U4V5W6'),
('R1S2T3U4V5W7', 'toys', 70, 15.00, 3.00, 10.00, 'B6C7D8E9F0G1'),
('B6C7D8E9F0G2', 'electronics', 400, 24.00, 5.00, 20.00, 'H2J3K4L5M6N7'),
('H2J3K4L5M6N8', 'home', 180, 27.00, 11.00, 13.00, 'P8Q9R0S1T2U3'),
('P8Q9R0S1T2U4', 'clothing', 220, 19.00, 9.00, 6.00, 'V4W5X6Y7Z8A9'),
('V4W5X6Y7Z8A1', 'books', 160, 23.00, 5.00, 8.00, 'D2E3F4G5H6I7'),
('D2E3F4G5H6I8', 'toys', 90, 20.00, 6.00, 10.00, 'J6K7L8M9N0O1'),
('J6K7L8M9N0O2', 'electronics', 310, 29.00, 12.00, 15.00, 'Q4R5S6T7U8V9'),
('Q4R5S6T7U8V1', 'home', 200, 30.00, 14.00, 18.00, 'W7X8Y9Z0A1B2'),
('W7X8Y9Z0A1B3', 'clothing', 270, 28.00, 8.00, 12.00, 'B8C9D0E1F2G3'),
('B8C9D0E1F2G4', 'books', 140, 20.00, 7.00, 11.00, 'F9G0H1I2J3K4'),
('F9G0H1I2J3K5', 'toys', 80, 15.00, 5.00, 8.00, 'O3P4Q5R6S7T8'),
('O3P4Q5R6S7T9', 'electronics', 230, 24.00, 6.00, 14.00, 'L9M0N1O2P3Q4'),
('L9M0N1O2P3Q5', 'home', 160, 21.00, 9.00, 12.00, 'T8U9V0W1X2Y3'),
('T8U9V0W1X2Y4', 'clothing', 290, 33.00, 10.00, 18.00, 'Y1Z2A3B4C5D6'),
('Y1Z2A3B4C5D7', 'books', 110, 16.00, 4.00, 6.00, 'N5O6P7Q8R9S0'),
('N5O6P7Q8R9S1', 'toys', 75, 12.00, 3.00, 9.00, 'M8N9O0P1Q2R3'),
('M8N9O0P1Q2R4', 'electronics', 320, 29.00, 8.00, 16.00, 'A7B8C9D0E1F2'),
('A7B8C9D0E1F3', 'home', 250, 18.00, 7.00, 15.00, 'H6I7J8K9L0M1'),
('H6I7J8K9L0M2', 'clothing', 350, 31.00, 12.00, 20.00, 'U2V3W4X5Y6Z7'),
('U2V3W4X5Y6Z8', 'books', 175, 14.00, 5.00, 8.00, 'K4L5M6N7O8P9'),
('K4L5M6N7O8P3', 'toys', 85, 19.00, 5.00, 10.00, 'I5J6K7L8M9N');


-- Orders table
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` VARCHAR(15) NOT NULL,
  `customer_id` VARCHAR(12) NOT NULL,
  `order_purchase_timestamp` DATETIME NOT NULL,
  `order_approved_at` DATETIME NOT NULL,
  PRIMARY KEY (`order_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

-- Insert data into the orders table
INSERT INTO `orders` VALUES 
('u6rPMRAYIGig', 'Me31iBBB7RhP', '2023-11-18 12:29:00', '2023-11-18 12:46:00'),
('u6rPMRAYIGih', 'OtS0cpcNAw7Y', '2023-11-18 12:29:00', '2023-11-18 12:46:00'),
('ohY8f4FEbX19', 'ZbtWFKy1Vu7M', '2024-10-22 14:10:00', '2024-10-22 14:15:00'),
('ohY8f4FEbX18', '6BML2CY3CttC', '2024-10-21 14:10:00', '2024-10-21 14:15:00'),
('ohY8f4FEbX17', 'rst6jVYwXU0G', '2023-09-20 14:10:00', '2023-09-20 14:15:00'),
('I28liQek73i2', 'JVtNmV3shrpL', '2024-10-20 11:30:00', '2024-10-20 11:35:00'),
('bBG1T89mlY8W', '2j7hygKmENzY', '2023-03-10 10:24:00', '2023-01-10 10:24:00'),
('CYxJJSQS8Lbo', 'mMTvwg7cVyly', '2024-10-25 13:45:00', '2024-10-25 13:50:00'),
('kUkQCFPtDvrC', 'NZy4XTzpszMz', '2024-07-26 21:40:00', '2024-07-26 21:50:00'),
('eV98svHRmPNG', 'rGupmABl4xp5', '2024-02-13 06:49:00', '2024-02-14 06:46:00'),
('b2tsoISX5lnP', 'MIn6giXgKR7y', '2024-10-15 16:20:00', '2024-10-15 16:25:00'),
('O0D3th8M88nF', 'xLODjhZE72AC', '2024-05-28 23:23:00', '2024-05-28 23:35:00'),
('yBTGlSf8GGMV', 'O8JdJHkIn4EY', '2023-02-28 17:28:00', '2023-02-28 19:20:00'),
('bYt6QQHe3VB5', 'pXK5qBhaeFH0', '2023-03-11 18:03:00', '2023-03-11 18:03:00'),
('MxR5cMi6F8AW', 'LSfp9GBrmMDn', '2023-06-30 09:52:00', '2023-06-30 10:05:00'),
('PCw6U5sbcCLn', 'hrU9kML7W2xm', '2024-01-06 21:50:00', '2024-01-06 21:55:00'),
('Zk0oNRt3qM32', 'xpLpgPvmaw5j', '2024-01-09 15:30:00', '2024-01-09 15:45:00'),
('gQys1g8Y5wIP', 'hdF9uUhnZHpB', '2024-06-17 14:57:00', '2024-06-17 15:02:00'),
('PTTH81RMlZkQ', 'Fb3gciqWyKJ7', '2024-01-01 12:09:00', '2024-01-01 12:15:00'),
('1JDSjAyGyL84', 'Yrtun6kIRFrZ', '2023-05-09 08:34:00', '2023-05-09 08:44:00'),
('RvDq7FJUlhtC', '4ETiFFGirGBF', '2024-05-29 09:57:00', '2024-05-29 10:04:00'),
('mREOnR1l3eic', 'EpT1DuM6talt', '2024-06-04 11:27:00', '2024-06-04 11:35:00'),
('BBq4z8WFMjsz', 'BqIV06RYXbKc', '2023-06-30 18:23:00', '2023-06-30 18:25:00'),
('tJvB77b0Qh06', 'FNQRs4bkNNn0', '2023-12-29 09:33:00', '2023-12-29 09:35:00'),
('qD8sFfX7OymW', 'jokhXydCLwSg', '2023-09-20 19:10:00', '2023-09-20 19:12:00'),
('gBbh0b4VIm8Z', 'AL9CWLBBe7zX', '2024-10-18 10:50:00', '2024-10-18 10:55:00'),
('Fc8TTEfAuzgH', 'HCSN2sal5qLk', '2023-07-19 15:35:00', '2023-07-19 15:40:00'),
('cYRYpSxsyA6R', '4Bktc9zo4g0V', '2024-01-19 13:50:00', '2024-01-19 14:00:00'),
('D3qL0tJGl3E1', 'IqGkUKlkaSu5', '2023-12-03 17:00:00', '2023-12-03 17:10:00'),
('WbfhMch9SR3P', 'NERPfQqnFeQP', '2023-08-14 09:12:00', '2023-08-14 09:20:00'),
('Sgt9v3Vf1K5v', 've5kqlKoTbdQ', '2024-06-01 21:10:00', '2024-06-01 21:20:00'),
('J96BlNcWsb2W', 'gx6AIVfk6ynZ', '2024-07-27 08:34:00', '2024-07-27 08:36:00'),
('ujHKTVTg6a0s', 'tjLCu8Kmg1s9', '2024-05-13 19:00:00', '2024-05-13 19:05:00'),
('ZLTz2eQZaqr8', 'WR4dUW3wycGo', '2023-12-24 14:40:00', '2023-12-24 14:45:00'),
('7r2M9Wr8VsTw', 'yZHcrO47lkeJ', '2024-07-10 16:15:00', '2024-07-10 16:20:00'),
('Wg3kCdf6Bc24', '9qGv5Yhq95GW', '2023-12-18 19:01:00', '2023-12-18 19:02:00'),
('O6dQtUn1I9bs', '3fuj5Bs9Bn8L', '2023-11-05 16:25:00', '2023-11-05 16:35:00'),
('HR89zdNG6ihA', 'q6QpKuozsUkj', '2023-08-10 09:05:00', '2023-08-10 09:15:00'),
('j8bHp5D1bcIf', 'fgv6IPYT7MdW', '2024-05-06 08:45:00', '2024-05-06 09:00:00');




-- Order items table
DROP TABLE IF EXISTS order_items;
CREATE TABLE IF NOT EXISTS `order_items` (
  `order_id` VARCHAR(15) NOT NULL,
  `product_id` VARCHAR(15) NOT NULL,
  `seller_id` VARCHAR(15) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `shipping_charges` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`order_id`, `product_id`),
  FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
);

-- Insert data into the order_items table
INSERT INTO `order_items` VALUES 
('u6rPMRAYIGig', '1slxdgbgWFax', 'A1B2C3D4E5F6', 24.10, 20.90),
('u6rPMRAYIGih', '77PgsiElQLeB', 'G7H8I9J0K1L2', 42.89, 12.28),
('ohY8f4FEbX19', 'A1B2C3D4E5F7', 'M3N4O5P6Q7R8', 50.21, 67.11),
('ohY8f4FEbX18', 'G7H8I9J0K1L3', 'S9T0U1V2W3X4', 89.10, 62.05),
('ohY8f4FEbX17', 'M3N4O5P6Q7R9', 'Y5Z6A7B8C9D0', 2139.99, 9.41),
('I28liQek73i2', 'S9T0U1V2W3X5', 'E1F2G3H4I5J6', 84.55, 20.65),
('bBG1T89mlY8W', 'Y5Z6A7B8C9D1', 'K7L8M9N0O1P2', 23.95, 23.87),
('CYxJJSQS8Lbo', 'E1F2G3H4I5J7', 'Q3R4S5T6U7V8', 692.00, 44.59),
('kUkQCFPtDvrC', 'K7L8M9N0O1P3', 'W9X0Y1Z2A3B4', 649.75, 39.88),
('eV98svHRmPNG', 'Q3R4S5T6U7V9', 'C5D6E7F8G9H0', 518.18, 2.46),
('b2tsoISX5lnP', 'C5D6E7F8G9H1', 'A3B4C5D6E7F8', 58.10, 26.26),
('O0D3th8M88nF', 'A3B4C5D6E7F9', 'K1L2M3N4O5P6', 420.07, 30.66),
('yBTGlSf8GGMV', 'K1L2M3N4O5P7', 'R8S9T0U1V2W3', 318.33, 27.73),
('bYt6QQHe3VB5', 'R8S9T0U1V2W4', 'X4Y5Z6A7B8C9', 34.00, 60.03),
('MxR5cMi6F8AW', 'X4Y5Z6A7B8C1', 'Q6R7S8T9U0V1', 52.00, 42.76),
('PCw6U5sbcCLn', 'Q6R7S8T9U0V2', 'J1K2L3M4N5O6', 509.99, 56.80),
('Zk0oNRt3qM32', 'J1K2L3M4N5O7', 'F3G4H5I6J7K8', 820.05, 47.55),
('gQys1g8Y5wIP', 'F3G4H5I6J7K9', 'A9B0C1D2E3F4', 692.00, 46.76),
('PTTH81RMlZkQ', 'A9B0C1D2E3F5', 'L5M6N7O8P9Q0', 74.89, 131.63),
('1JDSjAyGyL84', 'L5M6N7O8P9Q1', 'R1S2T3U4V5W6', 820.00, 47.55),
('RvDq7FJUlhtC', 'R1S2T3U4V5W7', 'B6C7D8E9F0G1', 40.95, 25.09),
('mREOnR1l3eic', 'B6C7D8E9F0G2', 'H2J3K4L5M6N7', 100.00, 25.87),
('BBq4z8WFMjsz', 'H2J3K4L5M6N8', 'P8Q9R0S1T2U3', 333.50, 25.28),
('tJvB77b0Qh06', 'P8Q9R0S1T2U4', 'V4W5X6Y7Z8A9', 91.33, 42.88),
('qD8sFfX7OymW', 'V4W5X6Y7Z8A1', 'D2E3F4G5H6I7', 509.99, 31.33),
('gBbh0b4VIm8Z', 'D2E3F4G5H6I8', 'J6K7L8M9N0O1', 518.18, 6.87),
('Fc8TTEfAuzgH', 'J6K7L8M9N0O2', 'Q4R5S6T7U8V9', 107.63, 52.93),
('cYRYpSxsyA6R', 'Q4R5S6T7U8V1', 'W7X8Y9Z0A1B2', 820.05, 239.14),
('D3qL0tJGl3E1', 'W7X8Y9Z0A1B3', 'B8C9D0E1F2G3', 71.25, 8.37),
('WbfhMch9SR3P', 'B8C9D0E1F2G4', 'F9G0H1I2J3K4', 53.99, 50.28),
('Sgt9v3Vf1K5v', 'F9G0H1I2J3K5', 'O3P4Q5R6S7T8', 22.97, 38.66),
('J96BlNcWsb2W', 'O3P4Q5R6S7T9', 'L9M0N1O2P3Q4', 117.56, 26.52),
('ujHKTVTg6a0s', 'L9M0N1O2P3Q5', 'T8U9V0W1X2Y3', 100.00, 29.66),
('ZLTz2eQZaqr8', 'T8U9V0W1X2Y4', 'Y1Z2A3B4C5D6', 152.40, 20.90),
('7r2M9Wr8VsTw', 'Y1Z2A3B4C5D7', 'N5O6P7Q8R9S0', 45.05, 90.98),
('Wg3kCdf6Bc24', 'N5O6P7Q8R9S1', 'M8N9O0P1Q2R3', 55.83, 32.79),
('O6dQtUn1I9bs', 'M8N9O0P1Q2R4', 'A7B8C9D0E1F2', 420.07, 7.52),
('HR89zdNG6ihA', 'A7B8C9D0E1F3', 'H6I7J8K9L0M1', 254.97, 51.45),
('j8bHp5D1bcIf', 'H6I7J8K9L0M2', 'U2V3W4X5Y6Z7', 220.99, 9.54),
('R19SCM1V2FY6', 'U2V3W4X5Y6Z8', 'K4L5M6N7O8P9', 56.89, 45.85),
('I50gSMR8RVmC', 'K4L5M6N7O8P3', 'I5J6K7L8M9N0', 23.10, 31.99),
('mIkGT25vc9rZ', 'I5J6K7L8M9N1', 'R7S8T9U0V1W2', 597.89, 87.83),
('xZgUWxkvR7yD', 'R7S8T9U0V1W3', 'C1D2E3F4G5H6', 518.18, 38.66),
('bwwLPobgW2J4', 'C1D2E3F4G5H7', 'Z8A9B0C1D2E3', 399.20, 20.90),
('6gUQOEOVG2Ok', 'Z8A9B0C1D2E3', 'J6K7L8M9N0O1', 189.99, 15.00),
('GfVXYgQT3M1Z', 'J6K7L8M9N0O2', 'K1L2M3N4O5P6', 111.50, 18.75),
('kF5hT1xPK8MZ', 'K1L2M3N4O5P6', 'R8S9T0U1V2W3', 280.30, 22.88),
('bM47Ug5Xk2Gw', 'R8S9T0U1V2W4', 'A9B0C1D2E3F4', 150.89, 31.66);




-- Order payments table
DROP TABLE IF EXISTS order_payments;
CREATE TABLE IF NOT EXISTS `order_payments` (
  `order_id` VARCHAR(15) NOT NULL,
  `payment_sequential` INT NOT NULL,
  `payment_type` VARCHAR(20) NOT NULL,
  `payment_installments` INT NOT NULL,
  `payment_value` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`order_id`, `payment_sequential`),
  FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
);

-- Insert data into the order payments table
-- Insert data into the order_payments table
INSERT INTO `order_payments` VALUES 
('u6rPMRAYIGig', 1, 'credit_card', 2, 155.77),
('u6rPMRAYIGih', 1, 'credit_card', 1, 42.89),
('ohY8f4FEbX19', 1, 'wallet', 1, 381.59),
('ohY8f4FEbX18', 1, 'credit_card', 3, 89.10),
('ohY8f4FEbX17', 1, 'voucher', 1, 2139.99),
('I28liQek73i2', 1, 'credit_card', 2, 342.02),
('bBG1T89mlY8W', 1, 'credit_card', 5, 48.71),
('CYxJJSQS8Lbo', 1, 'wallet', 1, 204.40),
('kUkQCFPtDvrC', 1, 'credit_card', 3, 997.37),
('eV98svHRmPNG', 1, 'wallet', 1, 204.62),
('b2tsoISX5lnP', 1, 'debit_card', 1, 57.57),
('O0D3th8M88nF', 1, 'voucher', 1, 420.07),
('yBTGlSf8GGMV', 1, 'credit_card', 4, 27.73),
('bYt6QQHe3VB5', 1, 'wallet', 1, 34.00),
('MxR5cMi6F8AW', 1, 'credit_card', 3, 52.00),
('PCw6U5sbcCLn', 1, 'credit_card', 1, 509.99),
('Zk0oNRt3qM32', 1, 'credit_card', 1, 820.05),
('gQys1g8Y5wIP', 1, 'credit_card', 1, 692.00),
('PTTH81RMlZkQ', 1, 'credit_card', 6, 239.14),
('1JDSjAyGyL84', 1, 'credit_card', 3, 820.00),
('RvDq7FJUlhtC', 1, 'credit_card', 1, 40.95),
('mREOnR1l3eic', 1, 'debit_card', 2, 100.00),
('BBq4z8WFMjsz', 1, 'voucher', 1, 333.50),
('tJvB77b0Qh06', 1, 'credit_card', 3, 91.33),
('qD8sFfX7OymW', 1, 'credit_card', 1, 509.99),
('gBbh0b4VIm8Z', 1, 'credit_card', 2, 518.18),
('Fc8TTEfAuzgH', 1, 'credit_card', 4, 107.63),
('cYRYpSxsyA6R', 1, 'wallet', 1, 820.05),
('D3qL0tJGl3E1', 1, 'credit_card', 3, 71.25),
('WbfhMch9SR3P', 1, 'wallet', 1, 53.99),
('Sgt9v3Vf1K5v', 1, 'credit_card', 1, 22.97),
('J96BlNcWsb2W', 1, 'credit_card', 2, 117.56),
('ujHKTVTg6a0s', 1, 'credit_card', 1, 100.00),
('ZLTz2eQZaqr8', 1, 'debit_card', 2, 152.40),
('7r2M9Wr8VsTw', 1, 'credit_card', 3, 45.05),
('Wg3kCdf6Bc24', 1, 'voucher', 1, 55.83),
('O6dQtUn1I9bs', 1, 'credit_card', 2, 420.07),
('HR89zdNG6ihA', 1, 'wallet', 1, 254.97),
('j8bHp5D1bcIf', 1, 'credit_card', 4, 220.99),
('R19SCM1V2FY6', 1, 'credit_card', 5, 56.89),
('I50gSMR8RVmC', 1, 'credit_card', 2, 23.10),
('mIkGT25vc9rZ', 1, 'credit_card', 6, 597.89),
('xZgUWxkvR7yD', 1, 'wallet', 1, 518.18),
('bwwLPobgW2J4', 1, 'debit_card', 1, 399.20),
('6gUQOEOVG2Ok', 1, 'credit_card', 3, 189.99),
('GfVXYgQT3M1Z', 1, 'credit_card', 4, 111.50),
('kF5hT1xPK8MZ', 1, 'wallet', 1, 280.30),
('bM47Ug5Xk2Gw', 1, 'credit_card', 3, 150.89),
('xYXNkJ3tR9Lz', 1, 'credit_card', 1, 220.50),
('F3vBwlxyLKJ5', 1, 'credit_card', 2, 300.25);


-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Commit all transactions to save changes
COMMIT;

-- 1. How many vendors do you have registered?
SELECT COUNT(*) AS number_of_vendors
FROM seller;

-- 2. Number of active vs inactive vendors with the company (this month)?
SELECT 
    CASE WHEN seller_rating >= 3 THEN 'Active' ELSE 'Inactive' END AS status,
    COUNT(*) AS number_of_vendors
FROM seller
GROUP BY status;

-- 3. How many customers have registered with your platform from the beginning?
SELECT COUNT(*) AS number_of_customers
FROM customer;

-- 4. Who is the vendor with the most number of listings?
SELECT seller_id, COUNT(*) AS number_of_listings
FROM product
GROUP BY seller_id
ORDER BY number_of_listings DESC
LIMIT 1;

-- 5. Who is the customer with the greatest number of orders?
SELECT customer_id, COUNT(*) AS number_of_orders
FROM orders
GROUP BY customer_id
ORDER BY number_of_orders DESC
LIMIT 1;

-- 6. Top 5 vendors by revenue by month - January, Feb, Mar
SELECT seller_id, MONTH(order_purchase_timestamp) AS month, SUM(price) AS total_revenue
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
WHERE MONTH(order_purchase_timestamp) IN (1, 2, 3)
GROUP BY seller_id, month
ORDER BY total_revenue DESC
LIMIT 5;

-- 7. Top 5 customers by revenue this year
SELECT customer_id, SUM(price) AS total_spent
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
WHERE YEAR(order_purchase_timestamp) = YEAR(CURDATE())
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 8. Has our revenue increased last month compared to last year in the same month?
WITH CurrentMonth AS ( 
    SELECT 
        EXTRACT(YEAR FROM CURRENT_DATE()) AS current_year, 
        EXTRACT(MONTH FROM CURRENT_DATE()) AS current_month 
), 
PreviousMonth AS ( 
    SELECT 
        current_year - 1 AS last_year, 
        current_month - 1  AS last_month 
    FROM CurrentMonth 
) 
SELECT 
    COALESCE(
        (SELECT SUM(op.payment_value) 
         FROM order_payments op 
         JOIN orders o ON op.order_id = o.order_id 
         WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) = (SELECT last_year FROM PreviousMonth) 
         AND EXTRACT(MONTH FROM o.order_purchase_timestamp) = (SELECT last_month FROM PreviousMonth)), 
        0) AS last_year_revenue, 
    COALESCE(
        (SELECT SUM(op.payment_value) 
         FROM order_payments op 
         JOIN orders o ON op.order_id = o.order_id 
         WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) = (SELECT current_year FROM CurrentMonth) 
         AND EXTRACT(MONTH FROM o.order_purchase_timestamp) = (SELECT current_month FROM CurrentMonth)), 
        0) AS current_month_revenue 
FROM dual;

-- 9. Compare the profitability of the top 5 customers to their revenue contribution
WITH customer_revenue AS (
    SELECT customer_id, SUM(price) AS total_revenue
    FROM orders
    JOIN order_items ON orders.order_id = order_items.order_id
    GROUP BY customer_id
    ORDER BY total_revenue DESC
    LIMIT 5
)
SELECT customer_id, total_revenue, (total_revenue * 0.2) AS estimated_profitability
FROM customer_revenue;

-- 10. Which vendor has the highest customer satisfaction rating?
SELECT seller_id, seller_rating AS highest_rating
FROM seller
ORDER BY seller_rating DESC
LIMIT 1;

-- 11. What is the most expensive order among my orders? (For a specific customer)
SELECT 
    orders.order_id,
    SUM(op.payment_value) AS total_order_value
FROM 
    orders 
JOIN 
    order_payments op ON orders.order_id = op.order_id
GROUP BY 
    orders.order_id
ORDER BY 
    total_order_value DESC
LIMIT 1;

-- 12. How many orders did I place with your business? (For a specific customer)
SELECT COUNT(*) AS number_of_orders
FROM orders
WHERE customer_id = 'Me31iBBB7RhP';

-- 13. Total historical spend with the business year to date (for a specific customer)
SELECT 
    c.customer_id,
    SUM(op.payment_value) AS total_spend 
FROM 
    orders o 
JOIN 
    order_payments op ON o.order_id = op.order_id 
JOIN 
    customer c ON o.customer_id = c.customer_id 
WHERE 
    YEAR(o.order_purchase_timestamp) = 2023
    AND c.customer_id = 'Me31iBBB7RhP';


-- 14. Present the customer with a trend chart of their expenditure
-- (Data extraction query, chart can be created in Excel)
SELECT MONTH(order_purchase_timestamp) AS month, SUM(price + shipping_charges) AS monthly_expenditure
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
WHERE customer_id = 'Me31iBBB7RhP'
GROUP BY month
ORDER BY month;

-- 15. Who are the top 3 customers by the number of orders placed in the last month?
SELECT customer_id, COUNT(*) AS number_of_orders
FROM orders
WHERE order_purchase_timestamp >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY customer_id
ORDER BY number_of_orders DESC
LIMIT 3;

-- 16. How many customers placed repeated orders in the last 3 months?
WITH repeated_orders AS (
    SELECT customer_id, COUNT(DISTINCT order_id) AS order_count
    FROM orders
    WHERE order_purchase_timestamp >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
    GROUP BY customer_id
)
SELECT COUNT(*) AS customers_with_repeated_orders
FROM repeated_orders
WHERE order_count > 1;

-- 17. What is the size of my database?
SELECT table_schema AS database_name,
       ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS database_size_mb
FROM information_schema.tables
WHERE table_schema = 'ecom'
GROUP BY table_schema;

-- 18. In any of the above queries, can you change your database design and reduce the cost of the query?
-- To reduce the cost of queries, consider adding indexes to frequently used columns in WHERE, GROUP BY, and JOIN conditions.
-- Example: Adding an index on the `customer_id` column in the `orders` table to speed up customer-specific queries.
CREATE INDEX idx_customer_id ON orders(customer_id);

-- Adding index on `seller_id` in the `order_items` table
CREATE INDEX idx_seller_id ON order_items(seller_id);

