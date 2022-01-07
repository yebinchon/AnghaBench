
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_userlocks; int sk_err_soft; scalar_t__ sk_route_caps; int sk_bound_dev_if; int sk_protocol; } ;
struct rtable {int dst; } ;
struct TYPE_8__ {int faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct flowi4 {int dummy; } ;
struct TYPE_9__ {struct flowi4 ip4; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_3__ fl; } ;
struct inet_sock {int inet_sport; int inet_dport; int inet_saddr; TYPE_4__ cork; int inet_daddr; int inet_opt; } ;
typedef int __be32 ;
struct TYPE_12__ {int sysctl_ip_dynaddr; } ;
struct TYPE_13__ {TYPE_5__ ipv4; } ;


 int IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int RT_CONN_FLAGS (struct sock*) ;
 int SOCK_BINDADDR_LOCK ;
 scalar_t__ TCP_SYN_SENT ;
 scalar_t__ __sk_dst_check (struct sock*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_sk_reselect_saddr (struct sock*) ;
 struct rtable* ip_route_output_ports (TYPE_6__*,struct flowi4*,struct sock*,int ,int ,int ,int ,int ,int ,int ) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_setup_caps (struct sock*,int *) ;
 TYPE_6__* sock_net (struct sock*) ;

int inet_sk_rebuild_header(struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);
 struct rtable *rt = (struct rtable *)__sk_dst_check(sk, 0);
 __be32 daddr;
 struct ip_options_rcu *inet_opt;
 struct flowi4 *fl4;
 int err;


 if (rt)
  return 0;


 rcu_read_lock();
 inet_opt = rcu_dereference(inet->inet_opt);
 daddr = inet->inet_daddr;
 if (inet_opt && inet_opt->opt.srr)
  daddr = inet_opt->opt.faddr;
 rcu_read_unlock();
 fl4 = &inet->cork.fl.u.ip4;
 rt = ip_route_output_ports(sock_net(sk), fl4, sk, daddr, inet->inet_saddr,
       inet->inet_dport, inet->inet_sport,
       sk->sk_protocol, RT_CONN_FLAGS(sk),
       sk->sk_bound_dev_if);
 if (!IS_ERR(rt)) {
  err = 0;
  sk_setup_caps(sk, &rt->dst);
 } else {
  err = PTR_ERR(rt);


  sk->sk_route_caps = 0;




  if (!sock_net(sk)->ipv4.sysctl_ip_dynaddr ||
      sk->sk_state != TCP_SYN_SENT ||
      (sk->sk_userlocks & SOCK_BINDADDR_LOCK) ||
      (err = inet_sk_reselect_saddr(sk)) != 0)
   sk->sk_err_soft = -err;
 }

 return err;
}
