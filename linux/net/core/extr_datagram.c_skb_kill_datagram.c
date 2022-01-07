
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int __sk_queue_drop_skb (struct sock*,int *,struct sk_buff*,unsigned int,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int sk_mem_reclaim_partial (struct sock*) ;

int skb_kill_datagram(struct sock *sk, struct sk_buff *skb, unsigned int flags)
{
 int err = __sk_queue_drop_skb(sk, &sk->sk_receive_queue, skb, flags,
          ((void*)0));

 kfree_skb(skb);
 sk_mem_reclaim_partial(sk);
 return err;
}
