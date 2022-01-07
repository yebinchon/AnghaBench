
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_forw_packet {int skb; } ;
struct TYPE_2__ {scalar_t__ num_bcasts; } ;


 TYPE_1__* BATADV_SKB_CB (int ) ;

bool batadv_forw_packet_is_rebroadcast(struct batadv_forw_packet *forw_packet)
{
 return BATADV_SKB_CB(forw_packet->skb)->num_bcasts > 0;
}
