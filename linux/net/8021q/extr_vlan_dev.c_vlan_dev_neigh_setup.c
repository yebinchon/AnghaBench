
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {int (* ndo_neigh_setup ) (struct net_device*,struct neigh_parms*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct neigh_parms {int dummy; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 scalar_t__ netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,struct neigh_parms*) ;
 TYPE_1__* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_dev_neigh_setup(struct net_device *dev, struct neigh_parms *pa)
{
 struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;
 const struct net_device_ops *ops = real_dev->netdev_ops;
 int err = 0;

 if (netif_device_present(real_dev) && ops->ndo_neigh_setup)
  err = ops->ndo_neigh_setup(real_dev, pa);

 return err;
}
