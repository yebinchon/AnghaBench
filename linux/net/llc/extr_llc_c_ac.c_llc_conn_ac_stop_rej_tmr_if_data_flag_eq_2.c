
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int timer; } ;
struct llc_sock {int data_flag; TYPE_1__ rej_sent_timer; } ;


 int del_timer (int *) ;
 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_stop_rej_tmr_if_data_flag_eq_2(struct sock *sk,
            struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 if (llc->data_flag == 2)
  del_timer(&llc->rej_sent_timer.timer);
 return 0;
}
