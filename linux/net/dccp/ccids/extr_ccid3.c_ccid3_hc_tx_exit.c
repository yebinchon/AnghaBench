
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int tx_hist; int tx_no_feedback_timer; } ;


 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;
 int tfrc_tx_hist_purge (int *) ;

__attribute__((used)) static void ccid3_hc_tx_exit(struct sock *sk)
{
 struct ccid3_hc_tx_sock *hc = ccid3_hc_tx_sk(sk);

 sk_stop_timer(sk, &hc->tx_no_feedback_timer);
 tfrc_tx_hist_purge(&hc->tx_hist);
}
