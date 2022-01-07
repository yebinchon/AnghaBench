
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_icmp_packet {scalar_t__ msg_type; int ttl; int orig; int dst; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ BATADV_ECHO_REQUEST ;
 int BATADV_TTL ;
 scalar_t__ BATADV_TTL_EXCEEDED ;
 int ETH_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NET_XMIT_SUCCESS ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,int *) ;
 int ether_addr_copy (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*,int ,int ) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;

__attribute__((used)) static int batadv_recv_icmp_ttl_exceeded(struct batadv_priv *bat_priv,
      struct sk_buff *skb)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_icmp_packet *icmp_packet;
 int res, ret = NET_RX_DROP;

 icmp_packet = (struct batadv_icmp_packet *)skb->data;


 if (icmp_packet->msg_type != BATADV_ECHO_REQUEST) {
  pr_debug("Warning - can't forward icmp packet from %pM to %pM: ttl exceeded\n",
    icmp_packet->orig, icmp_packet->dst);
  goto out;
 }

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto out;


 orig_node = batadv_orig_hash_find(bat_priv, icmp_packet->orig);
 if (!orig_node)
  goto out;


 if (skb_cow(skb, ETH_HLEN) < 0)
  goto out;

 icmp_packet = (struct batadv_icmp_packet *)skb->data;

 ether_addr_copy(icmp_packet->dst, icmp_packet->orig);
 ether_addr_copy(icmp_packet->orig, primary_if->net_dev->dev_addr);
 icmp_packet->msg_type = BATADV_TTL_EXCEEDED;
 icmp_packet->ttl = BATADV_TTL;

 res = batadv_send_skb_to_orig(skb, orig_node, ((void*)0));
 if (res == NET_RX_SUCCESS)
  ret = NET_XMIT_SUCCESS;


 skb = ((void*)0);

out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 if (orig_node)
  batadv_orig_node_put(orig_node);

 kfree_skb(skb);

 return ret;
}
