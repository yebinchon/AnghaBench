
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int in6; } ;
struct net {int dummy; } ;


 int AF_INET6 ;
 int IPV6_ADDR_UNICAST ;
 scalar_t__ RTN_UNICAST ;
 scalar_t__ inet_addr_type (struct net*,int ) ;
 int ipv6_addr_type (int *) ;

__attribute__((used)) static inline int ip_vs_addr_is_unicast(struct net *net, int af,
     union nf_inet_addr *addr)
{




 return (inet_addr_type(net, addr->ip) == RTN_UNICAST);
}
