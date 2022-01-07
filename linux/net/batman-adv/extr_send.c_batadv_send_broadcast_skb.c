
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 int batadv_broadcast_addr ;
 int batadv_send_skb_packet (struct sk_buff*,struct batadv_hard_iface*,int ) ;

int batadv_send_broadcast_skb(struct sk_buff *skb,
         struct batadv_hard_iface *hard_iface)
{
 return batadv_send_skb_packet(skb, hard_iface, batadv_broadcast_addr);
}
