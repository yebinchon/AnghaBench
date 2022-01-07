
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;


 int br_add_if (struct net_bridge*,struct net_device*,struct netlink_ext_ack*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static int br_add_slave(struct net_device *dev, struct net_device *slave_dev,
   struct netlink_ext_ack *extack)

{
 struct net_bridge *br = netdev_priv(dev);

 return br_add_if(br, slave_dev, extack);
}
