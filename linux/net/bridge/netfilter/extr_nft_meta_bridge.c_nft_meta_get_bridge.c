
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device const* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 scalar_t__ netif_is_bridge_port (struct net_device const*) ;

__attribute__((used)) static const struct net_device *
nft_meta_get_bridge(const struct net_device *dev)
{
 if (dev && netif_is_bridge_port(dev))
  return netdev_master_upper_dev_get_rcu((struct net_device *)dev);

 return ((void*)0);
}
