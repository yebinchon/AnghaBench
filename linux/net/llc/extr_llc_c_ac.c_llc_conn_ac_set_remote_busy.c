
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ expire; int timer; } ;
struct llc_sock {int remote_busy_flag; TYPE_1__ busy_state_timer; } ;


 scalar_t__ jiffies ;
 struct llc_sock* llc_sk (struct sock*) ;
 int mod_timer (int *,scalar_t__) ;

int llc_conn_ac_set_remote_busy(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 if (!llc->remote_busy_flag) {
  llc->remote_busy_flag = 1;
  mod_timer(&llc->busy_state_timer.timer,
    jiffies + llc->busy_state_timer.expire);
 }
 return 0;
}
