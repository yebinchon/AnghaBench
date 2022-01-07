
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int __netdev_upper_dev_link (struct net_device*,struct net_device*,int,int *,int *,struct netlink_ext_ack*) ;

int netdev_upper_dev_link(struct net_device *dev,
     struct net_device *upper_dev,
     struct netlink_ext_ack *extack)
{
 return __netdev_upper_dev_link(dev, upper_dev, 0,
           ((void*)0), ((void*)0), extack);
}
