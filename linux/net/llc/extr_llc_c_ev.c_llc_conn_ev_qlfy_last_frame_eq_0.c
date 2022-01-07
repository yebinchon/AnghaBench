
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ k; int pdu_unack_q; } ;


 TYPE_1__* llc_sk (struct sock*) ;
 scalar_t__ skb_queue_len (int *) ;

int llc_conn_ev_qlfy_last_frame_eq_0(struct sock *sk, struct sk_buff *skb)
{
 return skb_queue_len(&llc_sk(sk)->pdu_unack_q) + 1 == llc_sk(sk)->k;
}
