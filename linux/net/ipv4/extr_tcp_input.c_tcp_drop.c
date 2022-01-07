
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int sk_drops_add (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void tcp_drop(struct sock *sk, struct sk_buff *skb)
{
 sk_drops_add(sk, skb);
 __kfree_skb(skb);
}
