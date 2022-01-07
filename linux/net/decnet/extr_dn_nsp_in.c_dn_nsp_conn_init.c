
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;int sk_receive_queue; int sk_ack_backlog; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_nsp_conn_init(struct sock *sk, struct sk_buff *skb)
{
 if (sk_acceptq_is_full(sk)) {
  kfree_skb(skb);
  return;
 }

 sk->sk_ack_backlog++;
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_state_change(sk);
}
