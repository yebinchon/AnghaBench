
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;


 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 scalar_t__ netif_is_l3_master (struct net_device const*) ;
 scalar_t__ netif_is_l3_slave (struct net_device const*) ;

int l3mdev_master_ifindex_rcu(const struct net_device *dev)
{
 int ifindex = 0;

 if (!dev)
  return 0;

 if (netif_is_l3_master(dev)) {
  ifindex = dev->ifindex;
 } else if (netif_is_l3_slave(dev)) {
  struct net_device *master;
  struct net_device *_dev = (struct net_device *)dev;







  master = netdev_master_upper_dev_get_rcu(_dev);
  if (master)
   ifindex = master->ifindex;
 }

 return ifindex;
}
