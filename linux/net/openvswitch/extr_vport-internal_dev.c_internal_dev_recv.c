
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int protocol; int pkt_type; struct net_device* dev; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct TYPE_2__ {int rx_dropped; } ;
struct net_device {int flags; int tstats; TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int ETH_HLEN ;
 int IFF_UP ;
 int NETDEV_TX_OK ;
 int PACKET_HOST ;
 int eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int ) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t internal_dev_recv(struct sk_buff *skb)
{
 struct net_device *netdev = skb->dev;
 struct pcpu_sw_netstats *stats;

 if (unlikely(!(netdev->flags & IFF_UP))) {
  kfree_skb(skb);
  netdev->stats.rx_dropped++;
  return NETDEV_TX_OK;
 }

 skb_dst_drop(skb);
 nf_reset_ct(skb);
 secpath_reset(skb);

 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, netdev);
 skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);

 stats = this_cpu_ptr(netdev->tstats);
 u64_stats_update_begin(&stats->syncp);
 stats->rx_packets++;
 stats->rx_bytes += skb->len;
 u64_stats_update_end(&stats->syncp);

 netif_rx(skb);
 return NETDEV_TX_OK;
}
