
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_pinfo {int ipv6_mc_list; } ;


 int __ipv6_sock_mc_close (struct sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int rcu_access_pointer (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void ipv6_sock_mc_close(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);

 if (!rcu_access_pointer(np->ipv6_mc_list))
  return;
 rtnl_lock();
 __ipv6_sock_mc_close(sk);
 rtnl_unlock();
}
