
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int (* ndo_set_rx_mode ) (struct net_device*) ;} ;
struct net_device {int flags; int priv_flags; int uc_promisc; struct net_device_ops* netdev_ops; } ;


 int IFF_UNICAST_FLT ;
 int IFF_UP ;
 int __dev_set_promiscuity (struct net_device*,int,int) ;
 scalar_t__ netdev_uc_empty (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*) ;

void __dev_set_rx_mode(struct net_device *dev)
{
 const struct net_device_ops *ops = dev->netdev_ops;


 if (!(dev->flags&IFF_UP))
  return;

 if (!netif_device_present(dev))
  return;

 if (!(dev->priv_flags & IFF_UNICAST_FLT)) {



  if (!netdev_uc_empty(dev) && !dev->uc_promisc) {
   __dev_set_promiscuity(dev, 1, 0);
   dev->uc_promisc = 1;
  } else if (netdev_uc_empty(dev) && dev->uc_promisc) {
   __dev_set_promiscuity(dev, -1, 0);
   dev->uc_promisc = 0;
  }
 }

 if (ops->ndo_set_rx_mode)
  ops->ndo_set_rx_mode(dev);
}
