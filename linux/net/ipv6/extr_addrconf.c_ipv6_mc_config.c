
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ASSERT_RTNL () ;
 int ipv6_sock_mc_drop (struct sock*,int,struct in6_addr const*) ;
 int ipv6_sock_mc_join (struct sock*,int,struct in6_addr const*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int ipv6_mc_config(struct sock *sk, bool join,
     const struct in6_addr *addr, int ifindex)
{
 int ret;

 ASSERT_RTNL();

 lock_sock(sk);
 if (join)
  ret = ipv6_sock_mc_join(sk, ifindex, addr);
 else
  ret = ipv6_sock_mc_drop(sk, ifindex, addr);
 release_sock(sk);

 return ret;
}
