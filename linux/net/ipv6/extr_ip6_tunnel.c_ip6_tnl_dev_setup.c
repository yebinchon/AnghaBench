
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int addr_len; int perm_addr; int addr_assign_type; int hw_features; int features; int flags; int type; int priv_destructor; int * netdev_ops; } ;
struct in6_addr {int dummy; } ;


 int ARPHRD_TUNNEL6 ;
 int IFF_NOARP ;
 int IPXIPX_FEATURES ;
 int NETIF_F_LLTX ;
 int NET_ADDR_RANDOM ;
 int eth_random_addr (int ) ;
 int ip6_dev_free ;
 int ip6_tnl_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ip6_tnl_dev_setup(struct net_device *dev)
{
 dev->netdev_ops = &ip6_tnl_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ip6_dev_free;

 dev->type = ARPHRD_TUNNEL6;
 dev->flags |= IFF_NOARP;
 dev->addr_len = sizeof(struct in6_addr);
 dev->features |= NETIF_F_LLTX;
 netif_keep_dst(dev);

 dev->features |= IPXIPX_FEATURES;
 dev->hw_features |= IPXIPX_FEATURES;


 dev->addr_assign_type = NET_ADDR_RANDOM;
 eth_random_addr(dev->perm_addr);
}
