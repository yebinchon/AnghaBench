
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int br_drop_fake_rtable (struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;

__attribute__((used)) static int
br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 br_drop_fake_rtable(skb);
 return netif_receive_skb(skb);
}
