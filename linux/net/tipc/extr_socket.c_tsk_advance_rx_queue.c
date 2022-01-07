
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;


 int TIPC_DUMP_SK_RCVQ ;
 int __skb_dequeue (int *) ;
 int kfree_skb (int ) ;
 int trace_tipc_sk_advance_rx (struct sock*,int *,int ,char*) ;

__attribute__((used)) static void tsk_advance_rx_queue(struct sock *sk)
{
 trace_tipc_sk_advance_rx(sk, ((void*)0), TIPC_DUMP_SK_RCVQ, " ");
 kfree_skb(__skb_dequeue(&sk->sk_receive_queue));
}
