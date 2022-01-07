
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ogm_buff_mutex; int * ogm_buff; } ;
struct batadv_hard_iface {TYPE_1__ bat_iv; } ;


 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void batadv_iv_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
{
 mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);

 kfree(hard_iface->bat_iv.ogm_buff);
 hard_iface->bat_iv.ogm_buff = ((void*)0);

 mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
}
