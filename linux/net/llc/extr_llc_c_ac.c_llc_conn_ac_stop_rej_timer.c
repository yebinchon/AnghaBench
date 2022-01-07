
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ rej_sent_timer; } ;


 int del_timer (int *) ;
 TYPE_2__* llc_sk (struct sock*) ;

int llc_conn_ac_stop_rej_timer(struct sock *sk, struct sk_buff *skb)
{
 del_timer(&llc_sk(sk)->rej_sent_timer.timer);
 return 0;
}
