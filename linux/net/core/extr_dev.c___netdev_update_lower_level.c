
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ lower_level; } ;


 scalar_t__ __netdev_lower_depth (struct net_device*) ;

__attribute__((used)) static int __netdev_update_lower_level(struct net_device *dev, void *data)
{
 dev->lower_level = __netdev_lower_depth(dev) + 1;
 return 0;
}
