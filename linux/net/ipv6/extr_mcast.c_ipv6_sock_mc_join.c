
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;


 int MCAST_EXCLUDE ;
 int __ipv6_sock_mc_join (struct sock*,int,struct in6_addr const*,int ) ;

int ipv6_sock_mc_join(struct sock *sk, int ifindex, const struct in6_addr *addr)
{
 return __ipv6_sock_mc_join(sk, ifindex, addr, MCAST_EXCLUDE);
}
