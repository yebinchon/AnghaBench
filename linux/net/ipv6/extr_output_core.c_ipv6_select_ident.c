
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;


 int __ipv6_select_ident (struct net*,struct in6_addr const*,struct in6_addr const*) ;
 int htonl (int ) ;

__be32 ipv6_select_ident(struct net *net,
    const struct in6_addr *daddr,
    const struct in6_addr *saddr)
{
 u32 id;

 id = __ipv6_select_ident(net, daddr, saddr);
 return htonl(id);
}
