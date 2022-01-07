
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct llc_sock {int sk; } ;
struct TYPE_2__ {int timer; } ;


 int LLC_CONN_EV_TYPE_REJ_TMR ;
 struct llc_sock* from_timer (int ,struct timer_list*,int ) ;
 struct llc_sock* llc ;
 int llc_conn_tmr_common_cb (int *,int ) ;
 TYPE_1__ rej_sent_timer ;

void llc_conn_rej_tmr_cb(struct timer_list *t)
{
 struct llc_sock *llc = from_timer(llc, t, rej_sent_timer.timer);

 llc_conn_tmr_common_cb(&llc->sk, LLC_CONN_EV_TYPE_REJ_TMR);
}
