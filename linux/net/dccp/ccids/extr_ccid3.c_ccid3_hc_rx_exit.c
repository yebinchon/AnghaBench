
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {int rx_li_hist; int rx_hist; } ;


 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int tfrc_lh_cleanup (int *) ;
 int tfrc_rx_hist_purge (int *) ;

__attribute__((used)) static void ccid3_hc_rx_exit(struct sock *sk)
{
 struct ccid3_hc_rx_sock *hc = ccid3_hc_rx_sk(sk);

 tfrc_rx_hist_purge(&hc->rx_hist);
 tfrc_lh_cleanup(&hc->rx_li_hist);
}
