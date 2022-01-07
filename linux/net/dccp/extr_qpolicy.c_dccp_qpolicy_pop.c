
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {scalar_t__ priority; } ;


 struct sk_buff* dccp_qpolicy_top (struct sock*) ;
 int skb_unlink (struct sk_buff*,int *) ;

struct sk_buff *dccp_qpolicy_pop(struct sock *sk)
{
 struct sk_buff *skb = dccp_qpolicy_top(sk);

 if (skb != ((void*)0)) {

  skb->priority = 0;
  skb_unlink(skb, &sk->sk_write_queue);
 }
 return skb;
}
