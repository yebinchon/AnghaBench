
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_l_ack_ratio; int dccps_l_seq_win; int dccps_r_seq_win; } ;
struct ccid2_seq {scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {int tx_cwnd; int tx_ssthresh; int tx_packets_acked; } ;


 int CCID2_WIN_CHANGE_FACTOR ;
 int ccid2_change_l_ack_ratio (struct sock*,unsigned int) ;
 int ccid2_change_l_seq_window (struct sock*,int) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 scalar_t__ ccid2_jiffies32 ;
 int ccid2_rtt_estimator (struct sock*,scalar_t__) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static void ccid2_new_ack(struct sock *sk, struct ccid2_seq *seqp,
     unsigned int *maxincr)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 int r_seq_used = hc->tx_cwnd / dp->dccps_l_ack_ratio;

 if (hc->tx_cwnd < dp->dccps_l_seq_win &&
     r_seq_used < dp->dccps_r_seq_win) {
  if (hc->tx_cwnd < hc->tx_ssthresh) {
   if (*maxincr > 0 && ++hc->tx_packets_acked >= 2) {
    hc->tx_cwnd += 1;
    *maxincr -= 1;
    hc->tx_packets_acked = 0;
   }
  } else if (++hc->tx_packets_acked >= hc->tx_cwnd) {
   hc->tx_cwnd += 1;
   hc->tx_packets_acked = 0;
  }
 }





 if (r_seq_used * CCID2_WIN_CHANGE_FACTOR >= dp->dccps_r_seq_win)
  ccid2_change_l_ack_ratio(sk, dp->dccps_l_ack_ratio * 2);
 else if (r_seq_used * CCID2_WIN_CHANGE_FACTOR < dp->dccps_r_seq_win/2)
  ccid2_change_l_ack_ratio(sk, dp->dccps_l_ack_ratio / 2 ? : 1U);

 if (hc->tx_cwnd * CCID2_WIN_CHANGE_FACTOR >= dp->dccps_l_seq_win)
  ccid2_change_l_seq_window(sk, dp->dccps_l_seq_win * 2);
 else if (hc->tx_cwnd * CCID2_WIN_CHANGE_FACTOR < dp->dccps_l_seq_win/2)
  ccid2_change_l_seq_window(sk, dp->dccps_l_seq_win / 2);
 ccid2_rtt_estimator(sk, ccid2_jiffies32 - seqp->ccid2s_sent);
}
