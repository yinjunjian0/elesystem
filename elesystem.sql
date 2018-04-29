/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : elesystem

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-04-29 18:35:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for dataadmin_login
-- ----------------------------
DROP TABLE IF EXISTS `dataadmin_login`;
CREATE TABLE `dataadmin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dataadmin_login
-- ----------------------------
INSERT INTO `dataadmin_login` VALUES ('1', '123', '123');

-- ----------------------------
-- Table structure for ele_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `ele_gonggao`;
CREATE TABLE `ele_gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_gonggao
-- ----------------------------
INSERT INTO `ele_gonggao` VALUES ('1', '1月5日停电通知', '由于电缆出线故障，故届时15-17时停电抢修。', '2018-01-02 16:52:37');

-- ----------------------------
-- Table structure for ele_gzbx
-- ----------------------------
DROP TABLE IF EXISTS `ele_gzbx`;
CREATE TABLE `ele_gzbx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_gzbx
-- ----------------------------
INSERT INTO `ele_gzbx` VALUES ('1', 'yjj', '丁香g201', '故障', '2017-12-12', '水龙头坏了', '处理中', '2017-12-28 17:48:02');
INSERT INTO `ele_gzbx` VALUES ('3', 'yjj', '丁香g201', '故障', '2017-01-01', '水龙头坏了', '已查看', '2018-01-15 10:09:46');
INSERT INTO `ele_gzbx` VALUES ('4', 'yjj', '丁香g201', '故障', '2017-11-11', '花洒', '已查看', '2018-04-29 00:09:33');
INSERT INTO `ele_gzbx` VALUES ('5', 'lth', '南风g501', '其他', '2017-11-01', '厕所', '已派人', '2018-04-29 00:09:33');

-- ----------------------------
-- Table structure for ele_ly
-- ----------------------------
DROP TABLE IF EXISTS `ele_ly`;
CREATE TABLE `ele_ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_ly
-- ----------------------------
INSERT INTO `ele_ly` VALUES ('2', '建议', 'yjj', '建议', '建议内容丰富一些', '2017-12-28 17:39:09');

-- ----------------------------
-- Table structure for user_gongyezd
-- ----------------------------
DROP TABLE IF EXISTS `user_gongyezd`;
CREATE TABLE `user_gongyezd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `yongdian` varchar(255) DEFAULT NULL,
  `dianfei` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_gongyezd
-- ----------------------------
INSERT INTO `user_gongyezd` VALUES ('4', 'gy', '2018-02', '123123', '95592.25');
INSERT INTO `user_gongyezd` VALUES ('6', 'gy', '2018-05', '222', '199.8');
INSERT INTO `user_gongyezd` VALUES ('7', 'gy', '2018-04', '123', '1');
INSERT INTO `user_gongyezd` VALUES ('8', 'gy', '2018-01', '123', '110.7');

-- ----------------------------
-- Table structure for user_juminzd
-- ----------------------------
DROP TABLE IF EXISTS `user_juminzd`;
CREATE TABLE `user_juminzd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `date` varchar(8) DEFAULT NULL,
  `gu` varchar(255) DEFAULT NULL,
  `feng` varchar(255) DEFAULT NULL,
  `ping` varchar(255) DEFAULT NULL,
  `yongdian` varchar(255) DEFAULT NULL,
  `dianfei` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_juminzd
-- ----------------------------
INSERT INTO `user_juminzd` VALUES ('43', 'yjj', '2018-02', '033', '033', '033', '0', '69.30');
INSERT INTO `user_juminzd` VALUES ('58', 'yjj', '2018-05', '1', '0', '0', '1', '0.60');
INSERT INTO `user_juminzd` VALUES ('68', 'yjj', '2018-04', '1', '0', '0', '1', '0.60');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_date` varchar(20) DEFAULT NULL,
  `yue` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('18', 'gy', '123', '12412', '4124', '工业用户', '2017-12-09', '120.00');
INSERT INTO `user_login` VALUES ('19', 'lth', '123', '13727521738', '2926685103@qq.com', '居民用户', '2017-12-07', '458.50');
INSERT INTO `user_login` VALUES ('24', 'yjj', '111111', '13727521102', '2926685103@qq.com', '居民用电', '2018-01-02 ', '1001.00');
INSERT INTO `user_login` VALUES ('26', '1231231', '1231231', '12312312311', '123', '工业用电', '2018-04-29 12:05:45', null);
INSERT INTO `user_login` VALUES ('27', 'yjj1996', 'a123456', '13727521102', '1@qq.com', '居民用电', '2018-04-29 13:17:36', '500.00');
INSERT INTO `user_login` VALUES ('28', 'lth1995', '1234567', '12312312311', '1@qq.com', '居民用电', '2018-04-29 13:44:35', '0.00');

-- ----------------------------
-- Table structure for user_record
-- ----------------------------
DROP TABLE IF EXISTS `user_record`;
CREATE TABLE `user_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `dianfei` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_record
-- ----------------------------
INSERT INTO `user_record` VALUES ('1', 'yjj', '2017-7', '222');
INSERT INTO `user_record` VALUES ('2', 'lth', '2018-01', '108.30');
INSERT INTO `user_record` VALUES ('5', 'lth', '2018-04', '108.30');
