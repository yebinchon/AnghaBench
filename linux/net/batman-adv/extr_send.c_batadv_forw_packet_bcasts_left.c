
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_hard_iface {unsigned int num_bcasts; } ;
struct batadv_forw_packet {int skb; } ;
struct TYPE_2__ {unsigned int num_bcasts; } ;


 unsigned int BATADV_NUM_BCASTS_MAX ;
 TYPE_1__* BATADV_SKB_CB (int ) ;

__attribute__((used)) static bool
batadv_forw_packet_bcasts_left(struct batadv_forw_packet *forw_packet,
          struct batadv_hard_iface *hard_iface)
{
 unsigned int max;

 if (hard_iface)
  max = hard_iface->num_bcasts;
 else
  max = BATADV_NUM_BCASTS_MAX;

 return BATADV_SKB_CB(forw_packet->skb)->num_bcasts < max;
}
