
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __netlink_sendskb (struct sock*,struct sk_buff*) ;
 int sock_put (struct sock*) ;

int netlink_sendskb(struct sock *sk, struct sk_buff *skb)
{
 int len = __netlink_sendskb(sk, skb);

 sock_put(sk);
 return len;
}
