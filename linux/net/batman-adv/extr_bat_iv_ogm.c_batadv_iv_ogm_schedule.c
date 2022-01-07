
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ogm_buff_mutex; } ;
struct batadv_hard_iface {scalar_t__ if_status; TYPE_1__ bat_iv; } ;


 scalar_t__ BATADV_IF_NOT_IN_USE ;
 scalar_t__ BATADV_IF_TO_BE_REMOVED ;
 int batadv_iv_ogm_schedule_buff (struct batadv_hard_iface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
{
 if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
     hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
  return;

 mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
 batadv_iv_ogm_schedule_buff(hard_iface);
 mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
}
