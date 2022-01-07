
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; } ;
struct batadv_unicast_packet {scalar_t__ ttvn; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;




 int NET_XMIT_DROP ;
 int batadv_send_skb_prepare_unicast (struct sk_buff*,struct batadv_orig_node*) ;
 int batadv_send_skb_prepare_unicast_4addr (struct batadv_priv*,struct sk_buff*,struct batadv_orig_node*,int) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,int *) ;
 scalar_t__ batadv_tt_global_client_is_roaming (struct batadv_priv*,int ,unsigned short) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

int batadv_send_skb_unicast(struct batadv_priv *bat_priv,
       struct sk_buff *skb, int packet_type,
       int packet_subtype,
       struct batadv_orig_node *orig_node,
       unsigned short vid)
{
 struct batadv_unicast_packet *unicast_packet;
 struct ethhdr *ethhdr;
 int ret = NET_XMIT_DROP;

 if (!orig_node)
  goto out;

 switch (packet_type) {
 case 129:
  if (!batadv_send_skb_prepare_unicast(skb, orig_node))
   goto out;
  break;
 case 128:
  if (!batadv_send_skb_prepare_unicast_4addr(bat_priv, skb,
          orig_node,
          packet_subtype))
   goto out;
  break;
 default:



  goto out;
 }




 ethhdr = eth_hdr(skb);
 unicast_packet = (struct batadv_unicast_packet *)skb->data;






 if (batadv_tt_global_client_is_roaming(bat_priv, ethhdr->h_dest, vid))
  unicast_packet->ttvn = unicast_packet->ttvn - 1;

 ret = batadv_send_skb_to_orig(skb, orig_node, ((void*)0));

 skb = ((void*)0);

out:
 kfree_skb(skb);
 return ret;
}
