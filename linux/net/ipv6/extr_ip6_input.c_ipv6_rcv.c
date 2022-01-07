
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_DROP ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,struct net_device*,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 struct net* dev_net (int ) ;
 struct sk_buff* ip6_rcv_core (struct sk_buff*,struct net_device*,struct net*) ;
 int ip6_rcv_finish ;

int ipv6_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt, struct net_device *orig_dev)
{
 struct net *net = dev_net(skb->dev);

 skb = ip6_rcv_core(skb, dev, net);
 if (skb == ((void*)0))
  return NET_RX_DROP;
 return NF_HOOK(NFPROTO_IPV6, NF_INET_PRE_ROUTING,
         net, ((void*)0), skb, dev, ((void*)0),
         ip6_rcv_finish);
}
