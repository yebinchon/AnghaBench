
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int optlen; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int inet_opt; } ;


 struct inet_sock* inet_sk (struct sock*) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int sctp_v4_ip_options_len(struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ip_options_rcu *inet_opt;
 int len = 0;

 rcu_read_lock();
 inet_opt = rcu_dereference(inet->inet_opt);
 if (inet_opt)
  len = inet_opt->opt.optlen;

 rcu_read_unlock();
 return len;
}
