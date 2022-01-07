
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; int sk_protocol; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct TYPE_3__ {int faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int inet_sport; int inet_dport; int inet_saddr; int inet_opt; int inet_daddr; } ;
struct flowi4 {int dummy; } ;
struct TYPE_4__ {struct flowi4 ip4; } ;
struct flowi {TYPE_2__ u; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct rtable*) ;
 int RT_CONN_FLAGS (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct rtable* ip_route_output_ports (int ,struct flowi4*,struct sock*,int ,int ,int ,int ,int ,int ,int ) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_setup_caps (struct sock*,struct dst_entry*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct dst_entry *inet_csk_rebuild_route(struct sock *sk, struct flowi *fl)
{
 const struct inet_sock *inet = inet_sk(sk);
 const struct ip_options_rcu *inet_opt;
 __be32 daddr = inet->inet_daddr;
 struct flowi4 *fl4;
 struct rtable *rt;

 rcu_read_lock();
 inet_opt = rcu_dereference(inet->inet_opt);
 if (inet_opt && inet_opt->opt.srr)
  daddr = inet_opt->opt.faddr;
 fl4 = &fl->u.ip4;
 rt = ip_route_output_ports(sock_net(sk), fl4, sk, daddr,
       inet->inet_saddr, inet->inet_dport,
       inet->inet_sport, sk->sk_protocol,
       RT_CONN_FLAGS(sk), sk->sk_bound_dev_if);
 if (IS_ERR(rt))
  rt = ((void*)0);
 if (rt)
  sk_setup_caps(sk, &rt->dst);
 rcu_read_unlock();

 return &rt->dst;
}
