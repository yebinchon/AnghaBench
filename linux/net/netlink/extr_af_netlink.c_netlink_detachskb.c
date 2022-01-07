
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int sock_put (struct sock*) ;

void netlink_detachskb(struct sock *sk, struct sk_buff *skb)
{
 kfree_skb(skb);
 sock_put(sk);
}
