
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {int packet_type; } ;
struct batadv_unicast_4addr_packet {int subtype; scalar_t__ reserved; int src; TYPE_1__ u; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; } ;
struct TYPE_4__ {int dev_addr; } ;


 int BATADV_UNICAST_4ADDR ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_send_skb_push_fill_unicast (struct sk_buff*,int,struct batadv_orig_node*) ;
 int ether_addr_copy (int ,int ) ;

bool batadv_send_skb_prepare_unicast_4addr(struct batadv_priv *bat_priv,
        struct sk_buff *skb,
        struct batadv_orig_node *orig,
        int packet_subtype)
{
 struct batadv_hard_iface *primary_if;
 struct batadv_unicast_4addr_packet *uc_4addr_packet;
 bool ret = 0;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto out;





 if (!batadv_send_skb_push_fill_unicast(skb, sizeof(*uc_4addr_packet),
            orig))
  goto out;

 uc_4addr_packet = (struct batadv_unicast_4addr_packet *)skb->data;
 uc_4addr_packet->u.packet_type = BATADV_UNICAST_4ADDR;
 ether_addr_copy(uc_4addr_packet->src, primary_if->net_dev->dev_addr);
 uc_4addr_packet->subtype = packet_subtype;
 uc_4addr_packet->reserved = 0;

 ret = 1;
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 return ret;
}
