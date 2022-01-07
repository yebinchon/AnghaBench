
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int (* ndo_change_carrier ) (struct net_device*,int) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,int) ;

int dev_change_carrier(struct net_device *dev, bool new_carrier)
{
 const struct net_device_ops *ops = dev->netdev_ops;

 if (!ops->ndo_change_carrier)
  return -EOPNOTSUPP;
 if (!netif_device_present(dev))
  return -ENODEV;
 return ops->ndo_change_carrier(dev, new_carrier);
}
