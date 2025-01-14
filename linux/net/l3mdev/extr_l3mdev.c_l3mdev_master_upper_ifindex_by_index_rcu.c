
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 int netif_is_l3_master (struct net_device*) ;

int l3mdev_master_upper_ifindex_by_index_rcu(struct net *net, int ifindex)
{
 struct net_device *dev;

 dev = dev_get_by_index_rcu(net, ifindex);
 while (dev && !netif_is_l3_master(dev))
  dev = netdev_master_upper_dev_get(dev);

 return dev ? dev->ifindex : 0;
}
