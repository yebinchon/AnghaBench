
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_cwnd; int const tx_lsndtime; int tx_ssthresh; scalar_t__ tx_rto; int tx_cwnd_stamp; scalar_t__ tx_cwnd_used; } ;
typedef int s32 ;
struct TYPE_2__ {int dccps_mss_cache; } ;


 int ccid2_check_l_ack_ratio (struct sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 void* max (int,int) ;
 int min (int,int) ;
 int rfc3390_bytes_to_packets (int ) ;

__attribute__((used)) static void ccid2_cwnd_restart(struct sock *sk, const u32 now)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);
 u32 cwnd = hc->tx_cwnd, restart_cwnd,
     iwnd = rfc3390_bytes_to_packets(dccp_sk(sk)->dccps_mss_cache);
 s32 delta = now - hc->tx_lsndtime;

 hc->tx_ssthresh = max(hc->tx_ssthresh, (cwnd >> 1) + (cwnd >> 2));


 restart_cwnd = min(cwnd, iwnd);

 while ((delta -= hc->tx_rto) >= 0 && cwnd > restart_cwnd)
  cwnd >>= 1;
 hc->tx_cwnd = max(cwnd, restart_cwnd);
 hc->tx_cwnd_stamp = now;
 hc->tx_cwnd_used = 0;

 ccid2_check_l_ack_ratio(sk);
}
