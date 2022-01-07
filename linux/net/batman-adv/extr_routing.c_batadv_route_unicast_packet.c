
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct ethhdr {int h_source; } ;
struct batadv_unicast_packet {int ttl; int packet_type; int dest; } ;
struct batadv_unicast_4addr_packet {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;


 int BATADV_CNT_FORWARD ;
 int BATADV_CNT_FORWARD_BYTES ;


 scalar_t__ ETH_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NET_XMIT_SUCCESS ;
 int batadv_add_counter (struct batadv_priv*,int ,scalar_t__) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int batadv_skb_set_priority (struct sk_buff*,int) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 int pr_debug (char*,int ,int ) ;
 scalar_t__ skb_cow (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int batadv_route_unicast_packet(struct sk_buff *skb,
           struct batadv_hard_iface *recv_if)
{
 struct batadv_priv *bat_priv = netdev_priv(recv_if->soft_iface);
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_unicast_packet *unicast_packet;
 struct ethhdr *ethhdr = eth_hdr(skb);
 int res, hdr_len, ret = NET_RX_DROP;
 unsigned int len;

 unicast_packet = (struct batadv_unicast_packet *)skb->data;


 if (unicast_packet->ttl < 2) {
  pr_debug("Warning - can't forward unicast packet from %pM to %pM: ttl exceeded\n",
    ethhdr->h_source, unicast_packet->dest);
  goto free_skb;
 }


 orig_node = batadv_orig_hash_find(bat_priv, unicast_packet->dest);

 if (!orig_node)
  goto free_skb;


 if (skb_cow(skb, ETH_HLEN) < 0)
  goto put_orig_node;


 unicast_packet = (struct batadv_unicast_packet *)skb->data;
 unicast_packet->ttl--;

 switch (unicast_packet->packet_type) {
 case 128:
  hdr_len = sizeof(struct batadv_unicast_4addr_packet);
  break;
 case 129:
  hdr_len = sizeof(struct batadv_unicast_packet);
  break;
 default:

  hdr_len = -1;
  break;
 }

 if (hdr_len > 0)
  batadv_skb_set_priority(skb, hdr_len);

 len = skb->len;
 res = batadv_send_skb_to_orig(skb, orig_node, recv_if);


 if (res == NET_XMIT_SUCCESS) {
  ret = NET_RX_SUCCESS;

  batadv_inc_counter(bat_priv, BATADV_CNT_FORWARD);
  batadv_add_counter(bat_priv, BATADV_CNT_FORWARD_BYTES,
       len + ETH_HLEN);
 }


 skb = ((void*)0);

put_orig_node:
 batadv_orig_node_put(orig_node);
free_skb:
 kfree_skb(skb);

 return ret;
}
