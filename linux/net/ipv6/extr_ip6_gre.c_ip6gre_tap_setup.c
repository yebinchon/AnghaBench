
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int priv_flags; int features; int priv_destructor; int * netdev_ops; scalar_t__ max_mtu; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_TX_SKB_SHARING ;
 int NETIF_F_NETNS_LOCAL ;
 int ether_setup (struct net_device*) ;
 int ip6gre_dev_free ;
 int ip6gre_tap_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ip6gre_tap_setup(struct net_device *dev)
{

 ether_setup(dev);

 dev->max_mtu = 0;
 dev->netdev_ops = &ip6gre_tap_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ip6gre_dev_free;

 dev->features |= NETIF_F_NETNS_LOCAL;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 netif_keep_dst(dev);
}
