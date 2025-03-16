/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : ssmirak3

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-11-08 10:37:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735967613 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2020-11-07 11:12:39', '1', '地址1', '收货人1', '电话1', '是否默认地址[是/否]1');
INSERT INTO `address` VALUES ('2', '2020-11-07 11:12:39', '2', '地址2', '收货人2', '电话2', '是否默认地址[是/否]2');
INSERT INTO `address` VALUES ('3', '2020-11-07 11:12:39', '3', '地址3', '收货人3', '电话3', '是否默认地址[是/否]3');
INSERT INTO `address` VALUES ('1604735967612', '2020-11-07 15:59:26', '1604735787400', '上海市崇明区中兴镇', '刘倩', '15241214122', '是');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('2', '2020-11-07 11:12:39', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssmirak3/upload/cart_picture2.jpg', '2', '2', '2');
INSERT INTO `cart` VALUES ('3', '2020-11-07 11:12:39', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssmirak3/upload/cart_picture3.jpg', '3', '3', '3');

-- ----------------------------
-- Table structure for `changshangjianjie`
-- ----------------------------
DROP TABLE IF EXISTS `changshangjianjie`;
CREATE TABLE `changshangjianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianjie` longtext COMMENT '简介',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735565413 DEFAULT CHARSET=utf8 COMMENT='厂商简介';

-- ----------------------------
-- Records of changshangjianjie
-- ----------------------------
INSERT INTO `changshangjianjie` VALUES ('1', '2020-11-07 11:12:39', '标题3', 'http://localhost:8080/ssmirak3/upload/1604734599101.jpg', '<p>简介3</p>', '2020-11-07');
INSERT INTO `changshangjianjie` VALUES ('2', '2020-11-07 11:12:39', '标题2', 'http://localhost:8080/ssmirak3/upload/1604734535192.jpg', '<p>简介2</p>', '2020-11-07');
INSERT INTO `changshangjianjie` VALUES ('3', '2020-11-07 11:12:39', '标题3', 'http://localhost:8080/ssmirak3/upload/1604734583940.jpg', '<p>简介3</p>', '2020-11-07');
INSERT INTO `changshangjianjie` VALUES ('1604735565412', '2020-11-07 15:52:45', '上海钢铁有限公司', 'http://localhost:8080/ssmirak3/upload/1604735500010.jpg', '<p>&nbsp;上海钢铁有限公司成立于1980年，转生产各种钢材。。。。。</p>\n<p>详细地址上海市人名路21号</p>\n<p>联系人李总</p>\n<p>联系电话152141241214</p>\n<p>&nbsp;</p>', '2020-09-29');

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735753265 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-11-07 11:12:39', '1', '1', '提问1', '回复1', '0');
INSERT INTO `chat` VALUES ('2', '2020-11-07 11:12:39', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-11-07 11:12:39', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('1604735753264', '2020-11-07 15:55:52', '1', '1', null, '11212', null);

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssmirak3/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssmirak3/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssmirak3/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssmirak3/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssmirak3/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `discussshangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735864517 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------
INSERT INTO `discussshangpinxinxi` VALUES ('1', '2020-11-07 11:12:40', '1', '评论内容1', '1');
INSERT INTO `discussshangpinxinxi` VALUES ('2', '2020-11-07 11:12:40', '2', '评论内容2', '2');
INSERT INTO `discussshangpinxinxi` VALUES ('3', '2020-11-07 11:12:40', '3', '评论内容3', '3');
INSERT INTO `discussshangpinxinxi` VALUES ('1604735864516', '2020-11-07 15:57:43', '1604735640098', '这里的的器材真的很不错，质量刚刚的良心推荐', '1604735787400');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '是否关闭[关闭/开放]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604736107032 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1', '2020-11-07 11:12:39', '帖子标题1', '帖子内容1', '1', '1', '用户名1', '是否关闭[关闭/开放]1');
INSERT INTO `forum` VALUES ('2', '2020-11-07 11:12:39', '帖子标题2', '帖子内容2', '2', '2', '用户名2', '是否关闭[关闭/开放]2');
INSERT INTO `forum` VALUES ('3', '2020-11-07 11:12:39', '帖子标题3', '帖子内容3', '3', '3', '用户名3', '是否关闭[关闭/开放]3');
INSERT INTO `forum` VALUES ('1604735909748', '2020-11-07 15:58:29', '大家都说下哪些钢材比较适合建房子', '<p>请大家说下</p>', '0', '1604735787400', '2', '开放');
INSERT INTO `forum` VALUES ('1604736104496', '2020-11-07 16:01:43', '', '121212', '1604735909748', '1604733888021', null, '开放');
INSERT INTO `forum` VALUES ('1604736107031', '2020-11-07 16:01:46', '', '121212', '1604735909748', '1604733888021', null, '开放');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735741271 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2020-11-07 11:12:39', '标题1', 'http://localhost:8080/ssmirak3/upload/1604734632055.jpg', '<p>内容1</p>');
INSERT INTO `news` VALUES ('2', '2020-11-07 11:12:39', '标题2', 'http://localhost:8080/ssmirak3/upload/1604734641844.jpg', '<p>内容2</p>');
INSERT INTO `news` VALUES ('3', '2020-11-07 11:12:39', '标题3', 'http://localhost:8080/ssmirak3/upload/1604734652348.jpg', '<p>内容3</p>');
INSERT INTO `news` VALUES ('1604735741270', '2020-11-07 15:55:40', '钢铁资讯', 'http://localhost:8080/ssmirak3/upload/1604735701343.jpg', '<p>最近钢铁行情比较好，价格上涨了10%，这里可以发布一些资讯信息公告信息都可以&nbsp;</p>');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735986585 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2020-11-07 11:12:39', '订单id1', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/ssmirak3/upload/orders_picture1.jpg', '1', '1', '1', '1', '1', '1', '状态1', '地址1');
INSERT INTO `orders` VALUES ('2', '2020-11-07 11:12:39', '订单id2', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssmirak3/upload/orders_picture2.jpg', '2', '2', '2', '2', '2', '2', '状态2', '地址2');
INSERT INTO `orders` VALUES ('3', '2020-11-07 11:12:39', '订单id3', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssmirak3/upload/orders_picture3.jpg', '3', '3', '3', '3', '3', '3', '状态3', '地址3');
INSERT INTO `orders` VALUES ('1604718872626', '2020-11-07 11:14:32', '202011711141262614393', 'shangpinxinxi', '1', '2', '商品名称2', 'http://localhost:8080/ssmirak3/upload/shangpinxinxi_tupian2.jpg', '1', '2', '2', '2', '2', '1', '已退款', '地址1');
INSERT INTO `orders` VALUES ('1604718873017', '2020-11-07 11:14:32', '202011711141262446511', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/ssmirak3/upload/cart_picture1.jpg', '1', '1', '1', '1', '1', '1', '已完成', '地址1');
INSERT INTO `orders` VALUES ('1604718873062', '2020-11-07 11:14:32', '202011711141262876951', 'shangpinxinxi', '1', '1', '商品名称1', 'http://localhost:8080/ssmirak3/upload/shangpinxinxi_tupian1.jpg', '1', '1', '1', '1', '1', '1', '已完成', '地址1');
INSERT INTO `orders` VALUES ('1604735985653', '2020-11-07 15:59:45', '202011715594560715809', 'shangpinxinxi', '1604735787400', '2', '商品名称2', 'http://localhost:8080/ssmirak3/upload/1604734379845.jpg', '5', '2000', '2000', '10000', '10000', '1', '已退款', '上海市崇明区中兴镇');
INSERT INTO `orders` VALUES ('1604735986584', '2020-11-07 15:59:45', '202011715594560677407', 'shangpinxinxi', '1604735787400', '1604735640098', '钢管', 'http://localhost:8080/ssmirak3/upload/1604735594570.jpg', '3', '100', '100', '300', '300', '1', '已完成', '上海市崇明区中兴镇');

-- ----------------------------
-- Table structure for `shangpinleixing`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735652229 DEFAULT CHARSET=utf8 COMMENT='商品类型';

-- ----------------------------
-- Records of shangpinleixing
-- ----------------------------
INSERT INTO `shangpinleixing` VALUES ('1', '2020-11-07 11:12:39', '钢丝');
INSERT INTO `shangpinleixing` VALUES ('2', '2020-11-07 11:12:39', '铝合金');
INSERT INTO `shangpinleixing` VALUES ('3', '2020-11-07 11:12:39', '工业铝材');
INSERT INTO `shangpinleixing` VALUES ('1604735652228', '2020-11-07 15:54:12', '钢管');

-- ----------------------------
-- Table structure for `shangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735640099 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', '2020-11-07 11:12:39', '1002', '商品名称2', '铝合金', 'http://localhost:8080/ssmirak3/upload/1604734336574.jpg', '<p>商品详情2</p>', '200', '2000', '10000');
INSERT INTO `shangpinxinxi` VALUES ('2', '2020-11-07 11:12:39', '商品编号2', '商品名称2', '铝合金', 'http://localhost:8080/ssmirak3/upload/1604734379845.jpg', '<p>商品详情2</p>', '2000', '2000', '99994');
INSERT INTO `shangpinxinxi` VALUES ('3', '2020-11-07 11:12:39', '商品编号3', '商品名称3', '工业铝材', 'http://localhost:8080/ssmirak3/upload/1604734355849.jpg', '<p>商品详情3</p>', '300', '3000', '30000');
INSERT INTO `shangpinxinxi` VALUES ('1604735640098', '2020-11-07 15:53:59', '1500', '钢管', '工业铝材', 'http://localhost:8080/ssmirak3/upload/1604735594570.jpg', '<p><img src=\"http://localhost:8080/ssmirak3/upload/1604735615901.jpg\" alt=\"\" width=\"400\" height=\"267\" /></p>\n<p>这里可以写一些简介信息</p>', '100', '15000', '149996');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604736542164 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1', '2020-11-07 11:12:39', '1', '1', '表名1', '收藏名称1', 'http://localhost:8080/ssmirak3/upload/storeup_picture1.jpg');
INSERT INTO `storeup` VALUES ('2', '2020-11-07 11:12:39', '2', '2', '表名2', '收藏名称2', 'http://localhost:8080/ssmirak3/upload/storeup_picture2.jpg');
INSERT INTO `storeup` VALUES ('3', '2020-11-07 11:12:39', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/ssmirak3/upload/storeup_picture3.jpg');
INSERT INTO `storeup` VALUES ('1604735844559', '2020-11-07 15:57:23', '1604735787400', '1604735640098', 'shangpinxinxi', '', '');
INSERT INTO `storeup` VALUES ('1604736216197', '2020-11-07 16:03:35', '1604735787400', '3', 'shangpinxinxi', '', '');
INSERT INTO `storeup` VALUES ('1604736482371', '2020-11-07 16:08:01', '1604735787400', '3', 'shangpinxinxi', '', '');
INSERT INTO `storeup` VALUES ('1604736522743', '2020-11-07 16:08:42', '1604735787400', '1', 'shangpinxinxi', '', '');
INSERT INTO `storeup` VALUES ('1604736542163', '2020-11-07 16:09:01', '1604735787400', '1', 'shangpinxinxi', '', '');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'w6f3pjrlylp0w3mt0fzvraiclm4p9jay', '2020-11-07 11:13:44', '2020-11-07 17:07:14');
INSERT INTO `token` VALUES ('2', '1', '001', 'yonghu', '用户', '1qnrqklocvlrymnqrei92fgtz1fbuolz', '2020-11-07 11:14:03', '2020-11-07 16:50:32');
INSERT INTO `token` VALUES ('3', '1604733888021', '1', 'yonghu', '用户', 't8m3il7n1w1t5a1wyywsp7rgimfx0o0p', '2020-11-07 15:24:52', '2020-11-07 17:01:36');
INSERT INTO `token` VALUES ('4', '1604735787400', '2', 'yonghu', '用户', 'jr25hzpl4jmsxvll1z4o5lbgmmeasses', '2020-11-07 15:56:31', '2020-11-07 17:07:56');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-11-07 11:12:40');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1604735787401 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-07 11:12:39', '001', '001', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/ssmirak3/upload/yonghu_zhaopian1.jpg', '999');
INSERT INTO `yonghu` VALUES ('2', '2020-11-07 11:12:39', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/ssmirak3/upload/yonghu_zhaopian2.jpg', '2');
INSERT INTO `yonghu` VALUES ('3', '2020-11-07 11:12:39', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/ssmirak3/upload/yonghu_zhaopian3.jpg', '3');
INSERT INTO `yonghu` VALUES ('1604733888021', '2020-11-07 15:24:48', '1', '1', '李明', '男', '152141214121', '15212@163.com', '441214121412412141', 'http://localhost:8080/ssmirak3/upload/1604735480631.png', '0');
INSERT INTO `yonghu` VALUES ('1604735787400', '2020-11-07 15:56:27', '2', '2', '刘倩', '女', '15214121412', '152154@163.com', '445214121412141214', 'http://localhost:8080/ssmirak3/upload/1604735810497.png', '11700');
