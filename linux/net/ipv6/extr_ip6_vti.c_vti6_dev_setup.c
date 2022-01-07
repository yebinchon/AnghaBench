
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int addr_len; int perm_addr; int addr_assign_type; int flags; scalar_t__ max_mtu; int min_mtu; int type; int priv_destructor; int * netdev_ops; } ;
struct ipv6hdr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ARPHRD_TUNNEL6 ;
 int IFF_NOARP ;
 int IPV4_MIN_MTU ;
 scalar_t__ IP_MAX_MTU ;
 int NET_ADDR_RANDOM ;
 int eth_random_addr (int ) ;
 int netif_keep_dst (struct net_device*) ;
 int vti6_dev_free ;
 int vti6_netdev_ops ;

__attribute__((used)) static void vti6_dev_setup(struct net_device *dev)
{
 dev->netdev_ops = &vti6_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = vti6_dev_free;

 dev->type = ARPHRD_TUNNEL6;
 dev->min_mtu = IPV4_MIN_MTU;
 dev->max_mtu = IP_MAX_MTU - sizeof(struct ipv6hdr);
 dev->flags |= IFF_NOARP;
 dev->addr_len = sizeof(struct in6_addr);
 netif_keep_dst(dev);

 dev->addr_assign_type = NET_ADDR_RANDOM;
 eth_random_addr(dev->perm_addr);
}
