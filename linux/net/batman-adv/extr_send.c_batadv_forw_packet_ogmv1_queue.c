
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int forw_bat_list; int forw_bat_list_lock; } ;
struct batadv_forw_packet {int dummy; } ;


 int batadv_forw_packet_queue (struct batadv_forw_packet*,int *,int *,unsigned long) ;

void batadv_forw_packet_ogmv1_queue(struct batadv_priv *bat_priv,
        struct batadv_forw_packet *forw_packet,
        unsigned long send_time)
{
 batadv_forw_packet_queue(forw_packet, &bat_priv->forw_bat_list_lock,
     &bat_priv->forw_bat_list, send_time);
}
