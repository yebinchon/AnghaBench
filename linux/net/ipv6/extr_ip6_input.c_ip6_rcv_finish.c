
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_SUCCESS ;
 int dst_input (struct sk_buff*) ;
 int ip6_rcv_finish_core (struct net*,struct sock*,struct sk_buff*) ;
 struct sk_buff* l3mdev_ip6_rcv (struct sk_buff*) ;

int ip6_rcv_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{



 skb = l3mdev_ip6_rcv(skb);
 if (!skb)
  return NET_RX_SUCCESS;
 ip6_rcv_finish_core(net, sk, skb);

 return dst_input(skb);
}
