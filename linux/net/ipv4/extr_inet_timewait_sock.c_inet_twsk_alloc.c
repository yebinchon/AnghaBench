
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_cookie; TYPE_2__* sk_prot_creator; int sk_hash; int sk_reuseport; int sk_reuse; int sk_family; int sk_bound_dev_if; } ;
struct inet_timewait_sock {int tw_substate; TYPE_2__* tw_prot; int tw_refcnt; int tw_timer; int tw_cookie; int tw_transparent; scalar_t__ tw_ipv6only; int tw_hash; int tw_reuseport; int tw_reuse; int tw_family; int tw_dport; int tw_sport; int tw_state; int tw_num; int tw_tos; int tw_bound_dev_if; int tw_rcv_saddr; int tw_daddr; struct inet_timewait_death_row* tw_dr; } ;
struct inet_timewait_death_row {scalar_t__ sysctl_max_tw_buckets; int tw_count; } ;
struct inet_sock {int transparent; int inet_dport; int inet_sport; int inet_num; int tos; int inet_rcv_saddr; int inet_daddr; } ;
struct TYPE_4__ {int owner; TYPE_1__* twsk_prot; } ;
struct TYPE_3__ {int twsk_slab; } ;


 int GFP_ATOMIC ;
 int TCP_TIME_WAIT ;
 int TIMER_PINNED ;
 int __module_get (int ) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 scalar_t__ atomic_read (int *) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 struct inet_timewait_sock* kmem_cache_alloc (int ,int ) ;
 int refcount_set (int *,int ) ;
 int sock_net (struct sock const*) ;
 int timer_setup (int *,int ,int ) ;
 int tw_timer_handler ;
 int twsk_net_set (struct inet_timewait_sock*,int ) ;

struct inet_timewait_sock *inet_twsk_alloc(const struct sock *sk,
        struct inet_timewait_death_row *dr,
        const int state)
{
 struct inet_timewait_sock *tw;

 if (atomic_read(&dr->tw_count) >= dr->sysctl_max_tw_buckets)
  return ((void*)0);

 tw = kmem_cache_alloc(sk->sk_prot_creator->twsk_prot->twsk_slab,
         GFP_ATOMIC);
 if (tw) {
  const struct inet_sock *inet = inet_sk(sk);

  tw->tw_dr = dr;

  tw->tw_daddr = inet->inet_daddr;
  tw->tw_rcv_saddr = inet->inet_rcv_saddr;
  tw->tw_bound_dev_if = sk->sk_bound_dev_if;
  tw->tw_tos = inet->tos;
  tw->tw_num = inet->inet_num;
  tw->tw_state = TCP_TIME_WAIT;
  tw->tw_substate = state;
  tw->tw_sport = inet->inet_sport;
  tw->tw_dport = inet->inet_dport;
  tw->tw_family = sk->sk_family;
  tw->tw_reuse = sk->sk_reuse;
  tw->tw_reuseport = sk->sk_reuseport;
  tw->tw_hash = sk->sk_hash;
  tw->tw_ipv6only = 0;
  tw->tw_transparent = inet->transparent;
  tw->tw_prot = sk->sk_prot_creator;
  atomic64_set(&tw->tw_cookie, atomic64_read(&sk->sk_cookie));
  twsk_net_set(tw, sock_net(sk));
  timer_setup(&tw->tw_timer, tw_timer_handler, TIMER_PINNED);





  refcount_set(&tw->tw_refcnt, 0);

  __module_get(tw->tw_prot->owner);
 }

 return tw;
}
