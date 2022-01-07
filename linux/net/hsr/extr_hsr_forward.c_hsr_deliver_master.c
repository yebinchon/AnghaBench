
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_2__ {int multicast; int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct hsr_node {int dummy; } ;


 int ETH_HLEN ;
 int NET_RX_DROP ;
 scalar_t__ PACKET_MULTICAST ;
 int hsr_addr_subst_source (struct hsr_node*,struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void hsr_deliver_master(struct sk_buff *skb, struct net_device *dev,
          struct hsr_node *node_src)
{
 bool was_multicast_frame;
 int res;

 was_multicast_frame = (skb->pkt_type == PACKET_MULTICAST);
 hsr_addr_subst_source(node_src, skb);
 skb_pull(skb, ETH_HLEN);
 res = netif_rx(skb);
 if (res == NET_RX_DROP) {
  dev->stats.rx_dropped++;
 } else {
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += skb->len;
  if (was_multicast_frame)
   dev->stats.multicast++;
 }
}
