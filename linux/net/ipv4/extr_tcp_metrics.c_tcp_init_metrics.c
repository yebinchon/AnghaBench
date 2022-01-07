
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_cwnd_clamp; scalar_t__ snd_ssthresh; scalar_t__ reordering; scalar_t__ srtt_us; int rttvar_us; int mdev_max_us; int mdev_us; } ;
struct tcp_metrics_block {int dummy; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_rto; } ;


 int HZ ;
 scalar_t__ TCP_INFINITE_SSTHRESH ;
 int TCP_METRIC_CWND ;
 int TCP_METRIC_REORDERING ;
 int TCP_METRIC_RTT ;
 int TCP_METRIC_SSTHRESH ;
 scalar_t__ TCP_TIMEOUT_FALLBACK ;
 int USEC_PER_SEC ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int jiffies_to_usecs (scalar_t__) ;
 scalar_t__ max (int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_dst_confirm (struct sock*) ;
 struct tcp_metrics_block* tcp_get_metrics (struct sock*,struct dst_entry*,int) ;
 scalar_t__ tcp_metric_get (struct tcp_metrics_block*,int ) ;
 scalar_t__ tcp_metric_locked (struct tcp_metrics_block*,int ) ;
 int tcp_rto_min (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_init_metrics(struct sock *sk)
{
 struct dst_entry *dst = __sk_dst_get(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_metrics_block *tm;
 u32 val, crtt = 0;

 sk_dst_confirm(sk);
 if (!dst)
  goto reset;

 rcu_read_lock();
 tm = tcp_get_metrics(sk, dst, 1);
 if (!tm) {
  rcu_read_unlock();
  goto reset;
 }

 if (tcp_metric_locked(tm, TCP_METRIC_CWND))
  tp->snd_cwnd_clamp = tcp_metric_get(tm, TCP_METRIC_CWND);

 val = tcp_metric_get(tm, TCP_METRIC_SSTHRESH);
 if (val) {
  tp->snd_ssthresh = val;
  if (tp->snd_ssthresh > tp->snd_cwnd_clamp)
   tp->snd_ssthresh = tp->snd_cwnd_clamp;
 } else {



  tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
 }
 val = tcp_metric_get(tm, TCP_METRIC_REORDERING);
 if (val && tp->reordering != val)
  tp->reordering = val;

 crtt = tcp_metric_get(tm, TCP_METRIC_RTT);
 rcu_read_unlock();
reset:
 if (crtt > tp->srtt_us) {

  crtt /= 8 * USEC_PER_SEC / HZ;
  inet_csk(sk)->icsk_rto = crtt + max(2 * crtt, tcp_rto_min(sk));
 } else if (tp->srtt_us == 0) {






  tp->rttvar_us = jiffies_to_usecs(TCP_TIMEOUT_FALLBACK);
  tp->mdev_us = tp->mdev_max_us = tp->rttvar_us;

  inet_csk(sk)->icsk_rto = TCP_TIMEOUT_FALLBACK;
 }
}
