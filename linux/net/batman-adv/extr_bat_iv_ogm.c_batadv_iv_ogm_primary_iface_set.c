
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_ogm_packet {int ttl; } ;
struct TYPE_2__ {int ogm_buff_mutex; void* ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; } ;


 int BATADV_TTL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
batadv_iv_ogm_primary_iface_set(struct batadv_hard_iface *hard_iface)
{
 struct batadv_ogm_packet *batadv_ogm_packet;
 void *ogm_buff;

 mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);

 ogm_buff = hard_iface->bat_iv.ogm_buff;
 if (!ogm_buff)
  goto unlock;

 batadv_ogm_packet = ogm_buff;
 batadv_ogm_packet->ttl = BATADV_TTL;

unlock:
 mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
}
