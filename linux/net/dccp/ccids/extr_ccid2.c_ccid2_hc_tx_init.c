
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_l_ack_ratio; int dccps_mss_cache; } ;
struct ccid2_hc_tx_sock {unsigned int tx_ssthresh; int tx_rpdupack; int tx_av_chunks; int tx_rtotimer; struct sock* sk; scalar_t__ tx_cwnd_used; int tx_cwnd_stamp; int tx_lsndtime; int tx_last_cong; int tx_rto; int tx_cwnd; int tx_expected_wnd; } ;
struct ccid {int dummy; } ;


 int DCCP_TIMEOUT_INIT ;
 scalar_t__ DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ ccid2_hc_tx_alloc_seq (struct ccid2_hc_tx_sock*) ;
 int ccid2_hc_tx_rto_expire ;
 int ccid2_jiffies32 ;
 struct ccid2_hc_tx_sock* ccid_priv (struct ccid*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int rfc3390_bytes_to_packets (int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ccid2_hc_tx_init(struct ccid *ccid, struct sock *sk)
{
 struct ccid2_hc_tx_sock *hc = ccid_priv(ccid);
 struct dccp_sock *dp = dccp_sk(sk);
 u32 max_ratio;


 hc->tx_ssthresh = ~0U;


 hc->tx_cwnd = rfc3390_bytes_to_packets(dp->dccps_mss_cache);
 hc->tx_expected_wnd = hc->tx_cwnd;


 max_ratio = DIV_ROUND_UP(hc->tx_cwnd, 2);
 if (dp->dccps_l_ack_ratio == 0 || dp->dccps_l_ack_ratio > max_ratio)
  dp->dccps_l_ack_ratio = max_ratio;


 if (ccid2_hc_tx_alloc_seq(hc))
  return -ENOMEM;

 hc->tx_rto = DCCP_TIMEOUT_INIT;
 hc->tx_rpdupack = -1;
 hc->tx_last_cong = hc->tx_lsndtime = hc->tx_cwnd_stamp = ccid2_jiffies32;
 hc->tx_cwnd_used = 0;
 hc->sk = sk;
 timer_setup(&hc->tx_rtotimer, ccid2_hc_tx_rto_expire, 0);
 INIT_LIST_HEAD(&hc->tx_av_chunks);
 return 0;
}
