
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {long tx_srtt; long tx_mdev; long tx_mdev_max; long tx_rttvar; int tx_rto; int tx_rtt_seq; } ;
struct TYPE_2__ {int dccps_gss; int dccps_gar; } ;


 int DCCP_RTO_MAX ;
 scalar_t__ after48 (int ,int ) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 long max (long,int) ;
 int tcp_rto_min (struct sock*) ;

__attribute__((used)) static void ccid2_rtt_estimator(struct sock *sk, const long mrtt)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);
 long m = mrtt ? : 1;

 if (hc->tx_srtt == 0) {

  hc->tx_srtt = m << 3;
  hc->tx_mdev = m << 1;

  hc->tx_mdev_max = max(hc->tx_mdev, tcp_rto_min(sk));
  hc->tx_rttvar = hc->tx_mdev_max;

  hc->tx_rtt_seq = dccp_sk(sk)->dccps_gss;
 } else {

  m -= (hc->tx_srtt >> 3);
  hc->tx_srtt += m;


  if (m < 0) {
   m = -m;
   m -= (hc->tx_mdev >> 2);





   if (m > 0)
    m >>= 3;
  } else {
   m -= (hc->tx_mdev >> 2);
  }
  hc->tx_mdev += m;

  if (hc->tx_mdev > hc->tx_mdev_max) {
   hc->tx_mdev_max = hc->tx_mdev;
   if (hc->tx_mdev_max > hc->tx_rttvar)
    hc->tx_rttvar = hc->tx_mdev_max;
  }
  if (after48(dccp_sk(sk)->dccps_gar, hc->tx_rtt_seq)) {
   if (hc->tx_mdev_max < hc->tx_rttvar)
    hc->tx_rttvar -= (hc->tx_rttvar -
        hc->tx_mdev_max) >> 2;
   hc->tx_rtt_seq = dccp_sk(sk)->dccps_gss;
   hc->tx_mdev_max = tcp_rto_min(sk);
  }
 }
 hc->tx_rto = (hc->tx_srtt >> 3) + hc->tx_rttvar;

 if (hc->tx_rto > DCCP_RTO_MAX)
  hc->tx_rto = DCCP_RTO_MAX;
}
