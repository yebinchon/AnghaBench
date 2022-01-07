
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ogm_buff_mutex; scalar_t__ ogm_buff_len; int * ogm_buff; int ogm_wq; } ;
struct batadv_priv {TYPE_1__ bat_v; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void batadv_v_ogm_free(struct batadv_priv *bat_priv)
{
 cancel_delayed_work_sync(&bat_priv->bat_v.ogm_wq);

 mutex_lock(&bat_priv->bat_v.ogm_buff_mutex);

 kfree(bat_priv->bat_v.ogm_buff);
 bat_priv->bat_v.ogm_buff = ((void*)0);
 bat_priv->bat_v.ogm_buff_len = 0;

 mutex_unlock(&bat_priv->bat_v.ogm_buff_mutex);
}
