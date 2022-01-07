
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct batadv_unicast_packet {int ttvn; int dest; int ttl; int packet_type; int version; } ;
struct batadv_orig_node {int orig; int last_ttvn; } ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_TTL ;
 int BATADV_UNICAST ;
 int atomic_read (int *) ;
 scalar_t__ batadv_skb_head_push (struct sk_buff*,int) ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static bool
batadv_send_skb_push_fill_unicast(struct sk_buff *skb, int hdr_size,
      struct batadv_orig_node *orig_node)
{
 struct batadv_unicast_packet *unicast_packet;
 u8 ttvn = (u8)atomic_read(&orig_node->last_ttvn);

 if (batadv_skb_head_push(skb, hdr_size) < 0)
  return 0;

 unicast_packet = (struct batadv_unicast_packet *)skb->data;
 unicast_packet->version = BATADV_COMPAT_VERSION;

 unicast_packet->packet_type = BATADV_UNICAST;

 unicast_packet->ttl = BATADV_TTL;

 ether_addr_copy(unicast_packet->dest, orig_node->orig);

 unicast_packet->ttvn = ttvn;

 return 1;
}
