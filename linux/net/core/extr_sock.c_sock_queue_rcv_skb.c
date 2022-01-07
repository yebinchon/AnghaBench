
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int sk_filter (struct sock*,struct sk_buff*) ;

int sock_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int err;

 err = sk_filter(sk, skb);
 if (err)
  return err;

 return __sock_queue_rcv_skb(sk, skb);
}
