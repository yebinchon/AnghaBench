
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int * h_dest; int * h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_send_skb_unicast (struct batadv_priv*,struct sk_buff*,int,int,struct batadv_orig_node*,unsigned short) ;
 struct batadv_orig_node* batadv_transtable_search (struct batadv_priv*,int *,int *,unsigned short) ;

int batadv_send_skb_via_tt_generic(struct batadv_priv *bat_priv,
       struct sk_buff *skb, int packet_type,
       int packet_subtype, u8 *dst_hint,
       unsigned short vid)
{
 struct ethhdr *ethhdr = (struct ethhdr *)skb->data;
 struct batadv_orig_node *orig_node;
 u8 *src, *dst;
 int ret;

 src = ethhdr->h_source;
 dst = ethhdr->h_dest;


 if (dst_hint) {
  src = ((void*)0);
  dst = dst_hint;
 }
 orig_node = batadv_transtable_search(bat_priv, src, dst, vid);

 ret = batadv_send_skb_unicast(bat_priv, skb, packet_type,
          packet_subtype, orig_node, vid);

 if (orig_node)
  batadv_orig_node_put(orig_node);

 return ret;
}
