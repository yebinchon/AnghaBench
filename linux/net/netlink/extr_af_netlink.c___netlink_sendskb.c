
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int len; } ;


 int netlink_deliver_tap (int ,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int __netlink_sendskb(struct sock *sk, struct sk_buff *skb)
{
 int len = skb->len;

 netlink_deliver_tap(sock_net(sk), skb);

 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk);
 return len;
}
