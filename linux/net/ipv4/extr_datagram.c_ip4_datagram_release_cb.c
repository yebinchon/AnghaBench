
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; int sk_protocol; } ;
struct dst_entry {TYPE_1__* ops; int obsolete; } ;
struct rtable {struct dst_entry dst; } ;
struct TYPE_4__ {int faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_2__ opt; } ;
struct inet_sock {int inet_sport; int inet_dport; int inet_saddr; int inet_opt; int inet_daddr; } ;
struct flowi4 {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int ) ;} ;


 int IS_ERR (struct rtable*) ;
 int RT_CONN_FLAGS (struct sock*) ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct rtable* ip_route_output_ports (int ,struct flowi4*,struct sock*,int ,int ,int ,int ,int ,int ,int ) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_dst_set (struct sock*,struct dst_entry*) ;
 int sock_net (struct sock*) ;
 scalar_t__ stub1 (struct dst_entry*,int ) ;

void ip4_datagram_release_cb(struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);
 const struct ip_options_rcu *inet_opt;
 __be32 daddr = inet->inet_daddr;
 struct dst_entry *dst;
 struct flowi4 fl4;
 struct rtable *rt;

 rcu_read_lock();

 dst = __sk_dst_get(sk);
 if (!dst || !dst->obsolete || dst->ops->check(dst, 0)) {
  rcu_read_unlock();
  return;
 }
 inet_opt = rcu_dereference(inet->inet_opt);
 if (inet_opt && inet_opt->opt.srr)
  daddr = inet_opt->opt.faddr;
 rt = ip_route_output_ports(sock_net(sk), &fl4, sk, daddr,
       inet->inet_saddr, inet->inet_dport,
       inet->inet_sport, sk->sk_protocol,
       RT_CONN_FLAGS(sk), sk->sk_bound_dev_if);

 dst = !IS_ERR(rt) ? &rt->dst : ((void*)0);
 sk_dst_set(sk, dst);

 rcu_read_unlock();
}
