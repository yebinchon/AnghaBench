
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; int len; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_icmp_tp_packet {int dummy; } ;
struct batadv_icmp_header {int msg_type; int ttl; int orig; int dst; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int dev_addr; } ;






 int BATADV_TTL ;

 int ETH_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NET_XMIT_SUCCESS ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,int *) ;
 int batadv_socket_receive_packet (struct batadv_icmp_header*,int ) ;
 int batadv_tp_meter_recv (struct batadv_priv*,struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_cow (struct sk_buff*,int ) ;
 int skb_linearize (struct sk_buff*) ;

__attribute__((used)) static int batadv_recv_my_icmp_packet(struct batadv_priv *bat_priv,
          struct sk_buff *skb)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_icmp_header *icmph;
 int res, ret = NET_RX_DROP;

 icmph = (struct batadv_icmp_header *)skb->data;

 switch (icmph->msg_type) {
 case 131:
 case 132:
 case 128:

  if (skb_linearize(skb) < 0)
   break;

  batadv_socket_receive_packet(icmph, skb->len);
  break;
 case 130:

  primary_if = batadv_primary_if_get_selected(bat_priv);
  if (!primary_if)
   goto out;


  orig_node = batadv_orig_hash_find(bat_priv, icmph->orig);
  if (!orig_node)
   goto out;


  if (skb_cow(skb, ETH_HLEN) < 0)
   goto out;

  icmph = (struct batadv_icmp_header *)skb->data;

  ether_addr_copy(icmph->dst, icmph->orig);
  ether_addr_copy(icmph->orig, primary_if->net_dev->dev_addr);
  icmph->msg_type = 131;
  icmph->ttl = BATADV_TTL;

  res = batadv_send_skb_to_orig(skb, orig_node, ((void*)0));
  if (res == NET_XMIT_SUCCESS)
   ret = NET_RX_SUCCESS;


  skb = ((void*)0);
  break;
 case 129:
  if (!pskb_may_pull(skb, sizeof(struct batadv_icmp_tp_packet)))
   goto out;

  batadv_tp_meter_recv(bat_priv, skb);
  ret = NET_RX_SUCCESS;

  skb = ((void*)0);
  goto out;
 default:

  goto out;
 }
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 if (orig_node)
  batadv_orig_node_put(orig_node);

 kfree_skb(skb);

 return ret;
}
