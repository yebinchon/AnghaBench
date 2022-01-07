
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_ethhdr {int h_vlan_encapsulated_proto; } ;
struct sk_buff {int mark; scalar_t__ len; int protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_dest; int h_source; int h_proto; } ;
struct batadv_priv {int isolation_mark; int isolation_mark_mask; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_bcast_packet {scalar_t__ packet_type; } ;


 scalar_t__ BATADV_BCAST ;
 int BATADV_CNT_RX ;
 int BATADV_CNT_RX_BYTES ;
 scalar_t__ ETH_HLEN ;


 scalar_t__ VLAN_ETH_HLEN ;
 int batadv_add_counter (struct batadv_priv*,int ,scalar_t__) ;
 scalar_t__ batadv_bla_rx (struct batadv_priv*,struct sk_buff*,unsigned short,int) ;
 unsigned short batadv_get_vid (struct sk_buff*,int ) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 scalar_t__ batadv_is_ap_isolated (struct batadv_priv*,int ,int ,unsigned short) ;
 int batadv_tt_add_temporary_global_entry (struct batadv_priv*,struct batadv_orig_node*,int ,unsigned short) ;
 scalar_t__ batadv_tt_global_is_isolated (struct batadv_priv*,int ,unsigned short) ;
 scalar_t__ batadv_vlan_ap_isola_get (struct batadv_priv*,unsigned short) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_postpull_rcsum (struct sk_buff*,struct ethhdr*,scalar_t__) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void batadv_interface_rx(struct net_device *soft_iface,
    struct sk_buff *skb, int hdr_size,
    struct batadv_orig_node *orig_node)
{
 struct batadv_bcast_packet *batadv_bcast_packet;
 struct batadv_priv *bat_priv = netdev_priv(soft_iface);
 struct vlan_ethhdr *vhdr;
 struct ethhdr *ethhdr;
 unsigned short vid;
 bool is_bcast;

 batadv_bcast_packet = (struct batadv_bcast_packet *)skb->data;
 is_bcast = (batadv_bcast_packet->packet_type == BATADV_BCAST);

 skb_pull_rcsum(skb, hdr_size);
 skb_reset_mac_header(skb);




 nf_reset_ct(skb);

 if (unlikely(!pskb_may_pull(skb, ETH_HLEN)))
  goto dropped;

 vid = batadv_get_vid(skb, 0);
 ethhdr = eth_hdr(skb);

 switch (ntohs(ethhdr->h_proto)) {
 case 129:
  if (!pskb_may_pull(skb, VLAN_ETH_HLEN))
   goto dropped;

  vhdr = (struct vlan_ethhdr *)skb->data;


  if (vhdr->h_vlan_encapsulated_proto != htons(128))
   break;


 case 128:
  goto dropped;
 }


 skb->protocol = eth_type_trans(skb, soft_iface);
 skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);

 batadv_inc_counter(bat_priv, BATADV_CNT_RX);
 batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
      skb->len + ETH_HLEN);




 if (batadv_bla_rx(bat_priv, skb, vid, is_bcast))
  goto out;

 if (orig_node)
  batadv_tt_add_temporary_global_entry(bat_priv, orig_node,
           ethhdr->h_source, vid);

 if (is_multicast_ether_addr(ethhdr->h_dest)) {



  if (batadv_vlan_ap_isola_get(bat_priv, vid) &&
      batadv_tt_global_is_isolated(bat_priv, ethhdr->h_source,
       vid)) {



   skb->mark &= ~bat_priv->isolation_mark_mask;
   skb->mark |= bat_priv->isolation_mark;
  }
 } else if (batadv_is_ap_isolated(bat_priv, ethhdr->h_source,
      ethhdr->h_dest, vid)) {
  goto dropped;
 }

 netif_rx(skb);
 goto out;

dropped:
 kfree_skb(skb);
out:
 return;
}
