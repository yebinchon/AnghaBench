
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {int cfm_prim; } ;


 int LLC_DATA_PRIM ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;

__attribute__((used)) static int llc_conn_ac_data_confirm(struct sock *sk, struct sk_buff *skb)
{
 struct llc_conn_state_ev *ev = llc_conn_ev(skb);

 ev->cfm_prim = LLC_DATA_PRIM;
 return 0;
}
