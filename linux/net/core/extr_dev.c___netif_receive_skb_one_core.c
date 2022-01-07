
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct packet_type {int func; } ;
struct net_device {int dummy; } ;


 int INDIRECT_CALL_INET (int ,int ,int ,struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;
 int __netif_receive_skb_core (struct sk_buff*,int,struct packet_type**) ;
 int ip_rcv ;
 int ipv6_rcv ;

__attribute__((used)) static int __netif_receive_skb_one_core(struct sk_buff *skb, bool pfmemalloc)
{
 struct net_device *orig_dev = skb->dev;
 struct packet_type *pt_prev = ((void*)0);
 int ret;

 ret = __netif_receive_skb_core(skb, pfmemalloc, &pt_prev);
 if (pt_prev)
  ret = INDIRECT_CALL_INET(pt_prev->func, ipv6_rcv, ip_rcv, skb,
      skb->dev, pt_prev, orig_dev);
 return ret;
}
