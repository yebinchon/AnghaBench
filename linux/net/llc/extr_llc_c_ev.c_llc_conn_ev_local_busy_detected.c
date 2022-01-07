
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {scalar_t__ type; scalar_t__ prim_type; } ;


 scalar_t__ LLC_CONN_EV_LOCAL_BUSY_DETECTED ;
 scalar_t__ LLC_CONN_EV_TYPE_SIMPLE ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;

int llc_conn_ev_local_busy_detected(struct sock *sk, struct sk_buff *skb)
{
 const struct llc_conn_state_ev *ev = llc_conn_ev(skb);

 return ev->type == LLC_CONN_EV_TYPE_SIMPLE &&
        ev->prim_type == LLC_CONN_EV_LOCAL_BUSY_DETECTED ? 0 : 1;
}
