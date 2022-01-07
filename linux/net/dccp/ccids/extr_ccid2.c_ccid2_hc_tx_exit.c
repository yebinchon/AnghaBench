
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_seqbufc; int tx_av_chunks; int * tx_seqbuf; int tx_rtotimer; } ;


 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int dccp_ackvec_parsed_cleanup (int *) ;
 int kfree (int ) ;
 int sk_stop_timer (struct sock*,int *) ;

__attribute__((used)) static void ccid2_hc_tx_exit(struct sock *sk)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);
 int i;

 sk_stop_timer(sk, &hc->tx_rtotimer);

 for (i = 0; i < hc->tx_seqbufc; i++)
  kfree(hc->tx_seqbuf[i]);
 hc->tx_seqbufc = 0;
 dccp_ackvec_parsed_cleanup(&hc->tx_av_chunks);
}
