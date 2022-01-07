
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int TIPC_ERR_NO_PORT ;
 struct sk_buff* __skb_dequeue (int *) ;
 int tipc_sk_respond (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static void tsk_rej_rx_queue(struct sock *sk)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&sk->sk_receive_queue)))
  tipc_sk_respond(sk, skb, TIPC_ERR_NO_PORT);
}
