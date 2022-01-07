
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct vlan_pcpu_stats {int syncp; int rx_multicast; int rx_bytes; int rx_packets; } ;
struct sk_buff {scalar_t__ pkt_type; unsigned int data; scalar_t__ len; int vlan_tci; int priority; int mac_len; int vlan_proto; struct net_device* dev; } ;
struct net_device {int flags; int dev_addr; } ;
typedef int __be16 ;
struct TYPE_4__ {int h_dest; } ;
struct TYPE_3__ {int flags; int vlan_pcpu_stats; } ;


 int GFP_ATOMIC ;
 int IFF_UP ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_MULTICAST ;
 scalar_t__ PACKET_OTHERHOST ;
 int VLAN_FLAG_REORDER_HDR ;
 scalar_t__ VLAN_HLEN ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal_64bits (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_is_bridge_port (struct net_device*) ;
 int netif_is_macvlan_port (struct net_device*) ;
 unsigned int skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,unsigned int) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_vlan_tag_get_id (struct sk_buff*) ;
 struct vlan_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* vlan_dev_priv (struct net_device*) ;
 struct net_device* vlan_find_dev (struct net_device*,int ,int ) ;
 int vlan_get_ingress_priority (struct net_device*,int ) ;
 struct sk_buff* vlan_insert_inner_tag (struct sk_buff*,int ,int ,int ) ;

bool vlan_do_receive(struct sk_buff **skbp)
{
 struct sk_buff *skb = *skbp;
 __be16 vlan_proto = skb->vlan_proto;
 u16 vlan_id = skb_vlan_tag_get_id(skb);
 struct net_device *vlan_dev;
 struct vlan_pcpu_stats *rx_stats;

 vlan_dev = vlan_find_dev(skb->dev, vlan_proto, vlan_id);
 if (!vlan_dev)
  return 0;

 skb = *skbp = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  return 0;

 if (unlikely(!(vlan_dev->flags & IFF_UP))) {
  kfree_skb(skb);
  *skbp = ((void*)0);
  return 0;
 }

 skb->dev = vlan_dev;
 if (unlikely(skb->pkt_type == PACKET_OTHERHOST)) {



  if (ether_addr_equal_64bits(eth_hdr(skb)->h_dest, vlan_dev->dev_addr))
   skb->pkt_type = PACKET_HOST;
 }

 if (!(vlan_dev_priv(vlan_dev)->flags & VLAN_FLAG_REORDER_HDR) &&
     !netif_is_macvlan_port(vlan_dev) &&
     !netif_is_bridge_port(vlan_dev)) {
  unsigned int offset = skb->data - skb_mac_header(skb);






  skb_push(skb, offset);
  skb = *skbp = vlan_insert_inner_tag(skb, skb->vlan_proto,
          skb->vlan_tci, skb->mac_len);
  if (!skb)
   return 0;
  skb_pull(skb, offset + VLAN_HLEN);
  skb_reset_mac_len(skb);
 }

 skb->priority = vlan_get_ingress_priority(vlan_dev, skb->vlan_tci);
 __vlan_hwaccel_clear_tag(skb);

 rx_stats = this_cpu_ptr(vlan_dev_priv(vlan_dev)->vlan_pcpu_stats);

 u64_stats_update_begin(&rx_stats->syncp);
 rx_stats->rx_packets++;
 rx_stats->rx_bytes += skb->len;
 if (skb->pkt_type == PACKET_MULTICAST)
  rx_stats->rx_multicast++;
 u64_stats_update_end(&rx_stats->syncp);

 return 1;
}
