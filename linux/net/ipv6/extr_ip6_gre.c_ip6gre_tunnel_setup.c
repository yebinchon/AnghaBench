
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int addr_len; int perm_addr; int addr_assign_type; int flags; int type; int priv_destructor; int * netdev_ops; } ;
struct in6_addr {int dummy; } ;


 int ARPHRD_IP6GRE ;
 int IFF_NOARP ;
 int NET_ADDR_RANDOM ;
 int eth_random_addr (int ) ;
 int ip6gre_dev_free ;
 int ip6gre_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ip6gre_tunnel_setup(struct net_device *dev)
{
 dev->netdev_ops = &ip6gre_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ip6gre_dev_free;

 dev->type = ARPHRD_IP6GRE;

 dev->flags |= IFF_NOARP;
 dev->addr_len = sizeof(struct in6_addr);
 netif_keep_dst(dev);

 dev->addr_assign_type = NET_ADDR_RANDOM;
 eth_random_addr(dev->perm_addr);
}
