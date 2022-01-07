
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ tcp_wstamp_ns; scalar_t__ tcp_clock_cache; int pacing_timer; } ;
struct sock {int dummy; } ;


 int HRTIMER_MODE_ABS_PINNED_SOFT ;
 int hrtimer_is_queued (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (scalar_t__) ;
 int sock_hold (struct sock*) ;
 int tcp_needs_internal_pacing (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool tcp_pacing_check(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tcp_needs_internal_pacing(sk))
  return 0;

 if (tp->tcp_wstamp_ns <= tp->tcp_clock_cache)
  return 0;

 if (!hrtimer_is_queued(&tp->pacing_timer)) {
  hrtimer_start(&tp->pacing_timer,
         ns_to_ktime(tp->tcp_wstamp_ns),
         HRTIMER_MODE_ABS_PINNED_SOFT);
  sock_hold(sk);
 }
 return 1;
}
