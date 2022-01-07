
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_seq {scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {unsigned int tx_cwnd; int tx_ssthresh; scalar_t__ tx_last_cong; } ;
typedef scalar_t__ s32 ;


 int ccid2_check_l_ack_ratio (struct sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 scalar_t__ ccid2_jiffies32 ;
 int ccid2_pr_debug (char*) ;
 int max (int,unsigned int) ;

__attribute__((used)) static void ccid2_congestion_event(struct sock *sk, struct ccid2_seq *seqp)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);

 if ((s32)(seqp->ccid2s_sent - hc->tx_last_cong) < 0) {
  ccid2_pr_debug("Multiple losses in an RTT---treating as one\n");
  return;
 }

 hc->tx_last_cong = ccid2_jiffies32;

 hc->tx_cwnd = hc->tx_cwnd / 2 ? : 1U;
 hc->tx_ssthresh = max(hc->tx_cwnd, 2U);

 ccid2_check_l_ack_ratio(sk);
}
