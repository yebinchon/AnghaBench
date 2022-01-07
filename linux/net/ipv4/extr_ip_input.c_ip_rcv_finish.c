
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int dst_input (struct sk_buff*) ;
 int ip_rcv_finish_core (struct net*,struct sock*,struct sk_buff*,struct net_device*) ;
 struct sk_buff* l3mdev_ip_rcv (struct sk_buff*) ;

__attribute__((used)) static int ip_rcv_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 int ret;




 skb = l3mdev_ip_rcv(skb);
 if (!skb)
  return NET_RX_SUCCESS;

 ret = ip_rcv_finish_core(net, sk, skb, dev);
 if (ret != NET_RX_DROP)
  ret = dst_input(skb);
 return ret;
}
