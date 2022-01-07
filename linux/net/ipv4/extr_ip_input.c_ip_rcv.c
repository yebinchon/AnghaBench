
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_DROP ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,struct net_device*,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 struct net* dev_net (struct net_device*) ;
 struct sk_buff* ip_rcv_core (struct sk_buff*,struct net*) ;
 int ip_rcv_finish ;

int ip_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt,
    struct net_device *orig_dev)
{
 struct net *net = dev_net(dev);

 skb = ip_rcv_core(skb, net);
 if (skb == ((void*)0))
  return NET_RX_DROP;

 return NF_HOOK(NFPROTO_IPV4, NF_INET_PRE_ROUTING,
         net, ((void*)0), skb, dev, ((void*)0),
         ip_rcv_finish);
}
