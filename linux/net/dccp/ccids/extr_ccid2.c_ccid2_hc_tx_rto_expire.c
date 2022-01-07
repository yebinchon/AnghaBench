
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct ccid2_hc_tx_sock {int tx_rto; int tx_ssthresh; int tx_cwnd; int tx_rpdupack; int tx_rtotimer; scalar_t__ tx_rpseq; scalar_t__ tx_packets_acked; int tx_seqh; int tx_seqt; scalar_t__ tx_pipe; struct sock* sk; } ;


 scalar_t__ DCCP_CLOSED ;
 int DCCP_RTO_MAX ;
 int HZ ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int ccid2_change_l_ack_ratio (struct sock*,int) ;
 int ccid2_cwnd_network_limited (struct ccid2_hc_tx_sock*) ;
 int ccid2_pr_debug (char*) ;
 int dccp_tasklet_schedule (struct sock*) ;
 struct ccid2_hc_tx_sock* from_timer (int ,struct timer_list*,int ) ;
 struct ccid2_hc_tx_sock* hc ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tx_rtotimer ;

__attribute__((used)) static void ccid2_hc_tx_rto_expire(struct timer_list *t)
{
 struct ccid2_hc_tx_sock *hc = from_timer(hc, t, tx_rtotimer);
 struct sock *sk = hc->sk;
 const bool sender_was_blocked = ccid2_cwnd_network_limited(hc);

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {
  sk_reset_timer(sk, &hc->tx_rtotimer, jiffies + HZ / 5);
  goto out;
 }

 ccid2_pr_debug("RTO_EXPIRE\n");

 if (sk->sk_state == DCCP_CLOSED)
  goto out;


 hc->tx_rto <<= 1;
 if (hc->tx_rto > DCCP_RTO_MAX)
  hc->tx_rto = DCCP_RTO_MAX;


 hc->tx_ssthresh = hc->tx_cwnd / 2;
 if (hc->tx_ssthresh < 2)
  hc->tx_ssthresh = 2;
 hc->tx_cwnd = 1;
 hc->tx_pipe = 0;


 hc->tx_seqt = hc->tx_seqh;
 hc->tx_packets_acked = 0;


 hc->tx_rpseq = 0;
 hc->tx_rpdupack = -1;
 ccid2_change_l_ack_ratio(sk, 1);


 if (sender_was_blocked)
  dccp_tasklet_schedule(sk);

 sk_reset_timer(sk, &hc->tx_rtotimer, jiffies + hc->tx_rto);
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
