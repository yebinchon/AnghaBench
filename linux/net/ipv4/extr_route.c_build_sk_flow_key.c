
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_uid; int sk_protocol; int sk_mark; int sk_bound_dev_if; } ;
struct TYPE_2__ {int faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int inet_saddr; scalar_t__ hdrincl; int inet_opt; int inet_daddr; } ;
struct flowi4 {int dummy; } ;
typedef int __be32 ;


 int IPPROTO_RAW ;
 int RT_CONN_FLAGS (struct sock const*) ;
 int RT_SCOPE_UNIVERSE ;
 int flowi4_init_output (struct flowi4*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int inet_sk_flowi_flags (struct sock const*) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void build_sk_flow_key(struct flowi4 *fl4, const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);
 const struct ip_options_rcu *inet_opt;
 __be32 daddr = inet->inet_daddr;

 rcu_read_lock();
 inet_opt = rcu_dereference(inet->inet_opt);
 if (inet_opt && inet_opt->opt.srr)
  daddr = inet_opt->opt.faddr;
 flowi4_init_output(fl4, sk->sk_bound_dev_if, sk->sk_mark,
      RT_CONN_FLAGS(sk), RT_SCOPE_UNIVERSE,
      inet->hdrincl ? IPPROTO_RAW : sk->sk_protocol,
      inet_sk_flowi_flags(sk),
      daddr, inet->inet_saddr, 0, 0, sk->sk_uid);
 rcu_read_unlock();
}
