
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_cwnd; } ;


 int DCCPF_ACK_RATIO ;
 int ccid2_change_l_ack_ratio (struct sock*,unsigned int) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int dccp_feat_nn_get (struct sock*,int ) ;

__attribute__((used)) static void ccid2_check_l_ack_ratio(struct sock *sk)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);
 if (dccp_feat_nn_get(sk, DCCPF_ACK_RATIO) > hc->tx_cwnd)
  ccid2_change_l_ack_ratio(sk, hc->tx_cwnd/2 ? : 1U);
}
