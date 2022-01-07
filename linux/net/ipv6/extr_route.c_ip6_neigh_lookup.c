
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ IS_ERR (struct neighbour*) ;
 struct neighbour* __ipv6_neigh_lookup (struct net_device*,void const*) ;
 void* choose_neigh_daddr (struct in6_addr const*,struct sk_buff*,void const*) ;
 int nd_tbl ;
 struct neighbour* neigh_create (int *,void const*,struct net_device*) ;

struct neighbour *ip6_neigh_lookup(const struct in6_addr *gw,
       struct net_device *dev,
       struct sk_buff *skb,
       const void *daddr)
{
 struct neighbour *n;

 daddr = choose_neigh_daddr(gw, skb, daddr);
 n = __ipv6_neigh_lookup(dev, daddr);
 if (n)
  return n;

 n = neigh_create(&nd_tbl, daddr, dev);
 return IS_ERR(n) ? ((void*)0) : n;
}
