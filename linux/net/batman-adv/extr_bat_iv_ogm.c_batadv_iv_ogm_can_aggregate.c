
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_priv {int dummy; } ;
struct batadv_ogm_packet {int flags; int ttl; } ;
typedef struct batadv_hard_iface const batadv_hard_iface ;
struct batadv_forw_packet {int packet_len; struct batadv_hard_iface const* if_incoming; scalar_t__ own; struct batadv_hard_iface const* if_outgoing; int send_time; TYPE_1__* skb; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int BATADV_DIRECTLINK ;
 int BATADV_MAX_AGGREGATION_BYTES ;
 int BATADV_MAX_AGGREGATION_MS ;
 int batadv_hardif_put (struct batadv_hard_iface const*) ;
 struct batadv_hard_iface const* batadv_primary_if_get_selected (struct batadv_priv*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int time_after_eq (unsigned long,int ) ;
 int time_before (unsigned long,int ) ;

__attribute__((used)) static bool
batadv_iv_ogm_can_aggregate(const struct batadv_ogm_packet *new_bat_ogm_packet,
       struct batadv_priv *bat_priv,
       int packet_len, unsigned long send_time,
       bool directlink,
       const struct batadv_hard_iface *if_incoming,
       const struct batadv_hard_iface *if_outgoing,
       const struct batadv_forw_packet *forw_packet)
{
 struct batadv_ogm_packet *batadv_ogm_packet;
 int aggregated_bytes = forw_packet->packet_len + packet_len;
 struct batadv_hard_iface *primary_if = ((void*)0);
 bool res = 0;
 unsigned long aggregation_end_time;

 batadv_ogm_packet = (struct batadv_ogm_packet *)forw_packet->skb->data;
 aggregation_end_time = send_time;
 aggregation_end_time += msecs_to_jiffies(BATADV_MAX_AGGREGATION_MS);
 if (!time_before(send_time, forw_packet->send_time) ||
     !time_after_eq(aggregation_end_time, forw_packet->send_time))
  return 0;

 if (aggregated_bytes > BATADV_MAX_AGGREGATION_BYTES)
  return 0;


 if (forw_packet->if_outgoing != if_outgoing)
  return 0;
 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  return 0;




 if (!directlink &&
     !(batadv_ogm_packet->flags & BATADV_DIRECTLINK) &&
     batadv_ogm_packet->ttl != 1 &&




     (!forw_packet->own ||
      forw_packet->if_incoming == primary_if)) {
  res = 1;
  goto out;
 }




 if (directlink &&
     new_bat_ogm_packet->ttl == 1 &&
     forw_packet->if_incoming == if_incoming &&





     (batadv_ogm_packet->flags & BATADV_DIRECTLINK ||
      (forw_packet->own &&
       forw_packet->if_incoming != primary_if))) {
  res = 1;
  goto out;
 }

out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 return res;
}
