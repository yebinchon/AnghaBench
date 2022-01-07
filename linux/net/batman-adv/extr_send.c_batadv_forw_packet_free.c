
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_forw_packet {scalar_t__ queue_left; scalar_t__ if_outgoing; scalar_t__ if_incoming; int skb; } ;


 int atomic_inc (scalar_t__) ;
 int batadv_hardif_put (scalar_t__) ;
 int consume_skb (int ) ;
 int kfree (struct batadv_forw_packet*) ;
 int kfree_skb (int ) ;

void batadv_forw_packet_free(struct batadv_forw_packet *forw_packet,
        bool dropped)
{
 if (dropped)
  kfree_skb(forw_packet->skb);
 else
  consume_skb(forw_packet->skb);

 if (forw_packet->if_incoming)
  batadv_hardif_put(forw_packet->if_incoming);
 if (forw_packet->if_outgoing)
  batadv_hardif_put(forw_packet->if_outgoing);
 if (forw_packet->queue_left)
  atomic_inc(forw_packet->queue_left);
 kfree(forw_packet);
}
