
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_forw_packet {int skb; } ;
struct TYPE_2__ {int num_bcasts; } ;


 TYPE_1__* BATADV_SKB_CB (int ) ;

__attribute__((used)) static void
batadv_forw_packet_bcasts_inc(struct batadv_forw_packet *forw_packet)
{
 BATADV_SKB_CB(forw_packet->skb)->num_bcasts++;
}
