
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;


 int __ipv6_sock_mc_join (struct sock*,int,struct in6_addr const*,unsigned int) ;

int ipv6_sock_mc_join_ssm(struct sock *sk, int ifindex,
     const struct in6_addr *addr, unsigned int mode)
{
 return __ipv6_sock_mc_join(sk, ifindex, addr, mode);
}
