
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {unsigned long srtt_us; int mdev_us; int snd_cwnd; int snd_ssthresh; int reordering; } ;
struct tcp_metrics_block {int tcpm_stamp; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int sysctl_tcp_reordering; scalar_t__ sysctl_tcp_nometrics_save; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; scalar_t__ icsk_backoff; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ TCP_CA_Open ;
 int TCP_METRIC_CWND ;
 int TCP_METRIC_REORDERING ;
 int TCP_METRIC_RTT ;
 int TCP_METRIC_RTTVAR ;
 int TCP_METRIC_SSTHRESH ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int jiffies ;
 int max (int,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_dst_confirm (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 struct tcp_metrics_block* tcp_get_metrics (struct sock*,struct dst_entry*,int) ;
 scalar_t__ tcp_in_initial_slowstart (struct tcp_sock*) ;
 int tcp_in_slow_start (struct tcp_sock*) ;
 void* tcp_metric_get (struct tcp_metrics_block*,int ) ;
 int tcp_metric_locked (struct tcp_metrics_block*,int ) ;
 int tcp_metric_set (struct tcp_metrics_block*,int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_update_metrics(struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct net *net = sock_net(sk);
 struct tcp_metrics_block *tm;
 unsigned long rtt;
 u32 val;
 int m;

 sk_dst_confirm(sk);
 if (net->ipv4.sysctl_tcp_nometrics_save || !dst)
  return;

 rcu_read_lock();
 if (icsk->icsk_backoff || !tp->srtt_us) {




  tm = tcp_get_metrics(sk, dst, 0);
  if (tm && !tcp_metric_locked(tm, TCP_METRIC_RTT))
   tcp_metric_set(tm, TCP_METRIC_RTT, 0);
  goto out_unlock;
 } else
  tm = tcp_get_metrics(sk, dst, 1);

 if (!tm)
  goto out_unlock;

 rtt = tcp_metric_get(tm, TCP_METRIC_RTT);
 m = rtt - tp->srtt_us;





 if (!tcp_metric_locked(tm, TCP_METRIC_RTT)) {
  if (m <= 0)
   rtt = tp->srtt_us;
  else
   rtt -= (m >> 3);
  tcp_metric_set(tm, TCP_METRIC_RTT, rtt);
 }

 if (!tcp_metric_locked(tm, TCP_METRIC_RTTVAR)) {
  unsigned long var;

  if (m < 0)
   m = -m;


  m >>= 1;
  if (m < tp->mdev_us)
   m = tp->mdev_us;

  var = tcp_metric_get(tm, TCP_METRIC_RTTVAR);
  if (m >= var)
   var = m;
  else
   var -= (var - m) >> 2;

  tcp_metric_set(tm, TCP_METRIC_RTTVAR, var);
 }

 if (tcp_in_initial_slowstart(tp)) {

  if (!tcp_metric_locked(tm, TCP_METRIC_SSTHRESH)) {
   val = tcp_metric_get(tm, TCP_METRIC_SSTHRESH);
   if (val && (tp->snd_cwnd >> 1) > val)
    tcp_metric_set(tm, TCP_METRIC_SSTHRESH,
            tp->snd_cwnd >> 1);
  }
  if (!tcp_metric_locked(tm, TCP_METRIC_CWND)) {
   val = tcp_metric_get(tm, TCP_METRIC_CWND);
   if (tp->snd_cwnd > val)
    tcp_metric_set(tm, TCP_METRIC_CWND,
            tp->snd_cwnd);
  }
 } else if (!tcp_in_slow_start(tp) &&
     icsk->icsk_ca_state == TCP_CA_Open) {

  if (!tcp_metric_locked(tm, TCP_METRIC_SSTHRESH))
   tcp_metric_set(tm, TCP_METRIC_SSTHRESH,
           max(tp->snd_cwnd >> 1, tp->snd_ssthresh));
  if (!tcp_metric_locked(tm, TCP_METRIC_CWND)) {
   val = tcp_metric_get(tm, TCP_METRIC_CWND);
   tcp_metric_set(tm, TCP_METRIC_CWND, (val + tp->snd_cwnd) >> 1);
  }
 } else {



  if (!tcp_metric_locked(tm, TCP_METRIC_CWND)) {
   val = tcp_metric_get(tm, TCP_METRIC_CWND);
   tcp_metric_set(tm, TCP_METRIC_CWND,
           (val + tp->snd_ssthresh) >> 1);
  }
  if (!tcp_metric_locked(tm, TCP_METRIC_SSTHRESH)) {
   val = tcp_metric_get(tm, TCP_METRIC_SSTHRESH);
   if (val && tp->snd_ssthresh > val)
    tcp_metric_set(tm, TCP_METRIC_SSTHRESH,
            tp->snd_ssthresh);
  }
  if (!tcp_metric_locked(tm, TCP_METRIC_REORDERING)) {
   val = tcp_metric_get(tm, TCP_METRIC_REORDERING);
   if (val < tp->reordering &&
       tp->reordering != net->ipv4.sysctl_tcp_reordering)
    tcp_metric_set(tm, TCP_METRIC_REORDERING,
            tp->reordering);
  }
 }
 tm->tcpm_stamp = jiffies;
out_unlock:
 rcu_read_unlock();
}
