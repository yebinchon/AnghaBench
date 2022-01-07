
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct batadv_unicast_packet {int dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;


 int NET_RX_DROP ;
 int batadv_check_unicast_packet (struct batadv_priv*,struct sk_buff*,int) ;
 scalar_t__ batadv_is_my_mac (struct batadv_priv*,int ) ;
 int batadv_route_unicast_packet (struct sk_buff*,struct batadv_hard_iface*) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;

int batadv_recv_unhandled_unicast_packet(struct sk_buff *skb,
      struct batadv_hard_iface *recv_if)
{
 struct batadv_unicast_packet *unicast_packet;
 struct batadv_priv *bat_priv = netdev_priv(recv_if->soft_iface);
 int check, hdr_size = sizeof(*unicast_packet);

 check = batadv_check_unicast_packet(bat_priv, skb, hdr_size);
 if (check < 0)
  goto free_skb;


 unicast_packet = (struct batadv_unicast_packet *)skb->data;
 if (batadv_is_my_mac(bat_priv, unicast_packet->dest))
  goto free_skb;

 return batadv_route_unicast_packet(skb, recv_if);

free_skb:
 kfree_skb(skb);
 return NET_RX_DROP;
}
