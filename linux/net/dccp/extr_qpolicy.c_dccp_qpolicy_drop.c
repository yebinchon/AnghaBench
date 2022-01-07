
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;

void dccp_qpolicy_drop(struct sock *sk, struct sk_buff *skb)
{
 if (skb != ((void*)0)) {
  skb_unlink(skb, &sk->sk_write_queue);
  kfree_skb(skb);
 }
}
