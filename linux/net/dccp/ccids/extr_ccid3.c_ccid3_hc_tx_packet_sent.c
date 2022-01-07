
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int tx_hist; } ;
struct TYPE_2__ {int dccps_gss; } ;


 int DCCP_CRIT (char*) ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int ccid3_hc_tx_update_s (struct ccid3_hc_tx_sock*,unsigned int) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 scalar_t__ tfrc_tx_hist_add (int *,int ) ;

__attribute__((used)) static void ccid3_hc_tx_packet_sent(struct sock *sk, unsigned int len)
{
 struct ccid3_hc_tx_sock *hc = ccid3_hc_tx_sk(sk);

 ccid3_hc_tx_update_s(hc, len);

 if (tfrc_tx_hist_add(&hc->tx_hist, dccp_sk(sk)->dccps_gss))
  DCCP_CRIT("packet history - out of memory!");
}
