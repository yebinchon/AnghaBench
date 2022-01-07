
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int tx_no_feedback_timer; struct sock* sk; int * tx_hist; int tx_state; } ;
struct ccid {int dummy; } ;


 int TFRC_SSTATE_NO_SENT ;
 int ccid3_hc_tx_no_feedback_timer ;
 struct ccid3_hc_tx_sock* ccid_priv (struct ccid*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ccid3_hc_tx_init(struct ccid *ccid, struct sock *sk)
{
 struct ccid3_hc_tx_sock *hc = ccid_priv(ccid);

 hc->tx_state = TFRC_SSTATE_NO_SENT;
 hc->tx_hist = ((void*)0);
 hc->sk = sk;
 timer_setup(&hc->tx_no_feedback_timer,
      ccid3_hc_tx_no_feedback_timer, 0);
 return 0;
}
