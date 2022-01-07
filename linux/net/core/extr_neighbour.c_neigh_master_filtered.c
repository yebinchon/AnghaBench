
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;


 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;

__attribute__((used)) static bool neigh_master_filtered(struct net_device *dev, int master_idx)
{
 struct net_device *master;

 if (!master_idx)
  return 0;

 master = dev ? netdev_master_upper_dev_get(dev) : ((void*)0);
 if (!master || master->ifindex != master_idx)
  return 1;

 return 0;
}
