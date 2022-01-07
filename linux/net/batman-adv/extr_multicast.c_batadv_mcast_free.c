
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ mcast; } ;


 int BATADV_TVLV_MCAST ;
 int batadv_mcast_mla_tt_retract (struct batadv_priv*,int *) ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;
 int batadv_tvlv_handler_unregister (struct batadv_priv*,int ,int) ;
 int cancel_delayed_work_sync (int *) ;

void batadv_mcast_free(struct batadv_priv *bat_priv)
{
 cancel_delayed_work_sync(&bat_priv->mcast.work);

 batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_MCAST, 2);
 batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_MCAST, 2);


 batadv_mcast_mla_tt_retract(bat_priv, ((void*)0));
}
