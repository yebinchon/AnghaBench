
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_source; } ;
struct batadv_priv {TYPE_1__* algo_ops; } ;
struct batadv_hard_iface {int soft_iface; } ;
struct batadv_elp_packet {int orig; int seqno; } ;
struct TYPE_2__ {int name; } ;


 int BATADV_DBG_BATMAN ;
 int BATADV_ELP_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int batadv_check_management_packet (struct sk_buff*,struct batadv_hard_iface*,int ) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int ,int ) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 scalar_t__ batadv_is_my_mac (struct batadv_priv*,int ) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_v_elp_neigh_update (struct batadv_priv*,int ,struct batadv_hard_iface*,struct batadv_elp_packet*) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 int ntohl (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 scalar_t__ strcmp (int ,char*) ;

int batadv_v_elp_packet_recv(struct sk_buff *skb,
        struct batadv_hard_iface *if_incoming)
{
 struct batadv_priv *bat_priv = netdev_priv(if_incoming->soft_iface);
 struct batadv_elp_packet *elp_packet;
 struct batadv_hard_iface *primary_if;
 struct ethhdr *ethhdr = (struct ethhdr *)skb_mac_header(skb);
 bool res;
 int ret = NET_RX_DROP;

 res = batadv_check_management_packet(skb, if_incoming, BATADV_ELP_HLEN);
 if (!res)
  goto free_skb;

 if (batadv_is_my_mac(bat_priv, ethhdr->h_source))
  goto free_skb;




 if (strcmp(bat_priv->algo_ops->name, "BATMAN_V") != 0)
  goto free_skb;

 elp_packet = (struct batadv_elp_packet *)skb->data;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Received ELP packet from %pM seqno %u ORIG: %pM\n",
     ethhdr->h_source, ntohl(elp_packet->seqno),
     elp_packet->orig);

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto free_skb;

 batadv_v_elp_neigh_update(bat_priv, ethhdr->h_source, if_incoming,
      elp_packet);

 ret = NET_RX_SUCCESS;
 batadv_hardif_put(primary_if);

free_skb:
 if (ret == NET_RX_SUCCESS)
  consume_skb(skb);
 else
  kfree_skb(skb);

 return ret;
}
