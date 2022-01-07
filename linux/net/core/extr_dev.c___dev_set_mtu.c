
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int (* ndo_change_mtu ) (struct net_device*,int) ;} ;
struct net_device {int mtu; struct net_device_ops* netdev_ops; } ;


 int stub1 (struct net_device*,int) ;

int __dev_set_mtu(struct net_device *dev, int new_mtu)
{
 const struct net_device_ops *ops = dev->netdev_ops;

 if (ops->ndo_change_mtu)
  return ops->ndo_change_mtu(dev, new_mtu);

 dev->mtu = new_mtu;
 return 0;
}
