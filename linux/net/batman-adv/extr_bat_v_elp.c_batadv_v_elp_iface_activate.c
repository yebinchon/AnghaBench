
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {struct sk_buff* elp_skb; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; TYPE_1__ bat_v; } ;
struct batadv_elp_packet {int orig; } ;
struct TYPE_4__ {int dev_addr; } ;


 int ether_addr_copy (int ,int ) ;

void batadv_v_elp_iface_activate(struct batadv_hard_iface *primary_iface,
     struct batadv_hard_iface *hard_iface)
{
 struct batadv_elp_packet *elp_packet;
 struct sk_buff *skb;

 if (!hard_iface->bat_v.elp_skb)
  return;

 skb = hard_iface->bat_v.elp_skb;
 elp_packet = (struct batadv_elp_packet *)skb->data;
 ether_addr_copy(elp_packet->orig,
   primary_iface->net_dev->dev_addr);
}
