
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int timer; } ;
struct TYPE_5__ {int timer; } ;
struct TYPE_4__ {int timer; } ;
struct llc_sock {scalar_t__ ack_pf; scalar_t__ ack_must_be_send; TYPE_3__ busy_state_timer; TYPE_2__ pf_cycle_timer; TYPE_1__ rej_sent_timer; } ;


 int del_timer (int *) ;
 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_stop_other_timers(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 del_timer(&llc->rej_sent_timer.timer);
 del_timer(&llc->pf_cycle_timer.timer);
 del_timer(&llc->busy_state_timer.timer);
 llc->ack_must_be_send = 0;
 llc->ack_pf = 0;
 return 0;
}
