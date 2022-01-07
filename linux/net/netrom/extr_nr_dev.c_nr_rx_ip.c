
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; int network_header; int mac_header; struct net_device* dev; int protocol; scalar_t__ len; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;


 int ETH_P_IP ;
 int PACKET_HOST ;
 int htons (int ) ;
 int netif_running (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

int nr_rx_ip(struct sk_buff *skb, struct net_device *dev)
{
 struct net_device_stats *stats = &dev->stats;

 if (!netif_running(dev)) {
  stats->rx_dropped++;
  return 0;
 }

 stats->rx_packets++;
 stats->rx_bytes += skb->len;

 skb->protocol = htons(ETH_P_IP);


 skb->dev = dev;
 skb->mac_header = skb->network_header;
 skb_reset_network_header(skb);
 skb->pkt_type = PACKET_HOST;

 netif_rx(skb);

 return 1;
}
