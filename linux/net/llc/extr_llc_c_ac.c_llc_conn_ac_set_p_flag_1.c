
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int llc_conn_set_p_flag (struct sock*,int) ;

__attribute__((used)) static int llc_conn_ac_set_p_flag_1(struct sock *sk, struct sk_buff *skb)
{
 llc_conn_set_p_flag(sk, 1);
 return 0;
}
