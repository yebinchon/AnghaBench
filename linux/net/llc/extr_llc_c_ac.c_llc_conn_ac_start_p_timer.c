
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ expire; int timer; } ;
struct llc_sock {TYPE_1__ pf_cycle_timer; } ;


 scalar_t__ jiffies ;
 int llc_conn_set_p_flag (struct sock*,int) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int mod_timer (int *,scalar_t__) ;

int llc_conn_ac_start_p_timer(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 llc_conn_set_p_flag(sk, 1);
 mod_timer(&llc->pf_cycle_timer.timer,
    jiffies + llc->pf_cycle_timer.expire);
 return 0;
}
