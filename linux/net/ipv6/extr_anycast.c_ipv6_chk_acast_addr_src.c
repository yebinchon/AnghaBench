
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int ipv6_addr_type (struct in6_addr const*) ;
 int ipv6_chk_acast_addr (struct net*,struct net_device*,struct in6_addr const*) ;

bool ipv6_chk_acast_addr_src(struct net *net, struct net_device *dev,
        const struct in6_addr *addr)
{
 return ipv6_chk_acast_addr(net,
       (ipv6_addr_type(addr) & IPV6_ADDR_LINKLOCAL ?
        dev : ((void*)0)),
       addr);
}
