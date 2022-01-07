
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int llc_sk_stop_all_timers (struct sock*,int) ;

int llc_conn_ac_stop_all_timers(struct sock *sk, struct sk_buff *skb)
{
 llc_sk_stop_all_timers(sk, 0);
 return 0;
}
