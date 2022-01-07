
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ mcast; } ;


 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ;
 int BATADV_TVLV_MCAST ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int batadv_mcast_mla_update ;
 int batadv_mcast_start_timer (struct batadv_priv*) ;
 int batadv_mcast_tvlv_ogm_handler ;
 int batadv_tvlv_handler_register (struct batadv_priv*,int ,int *,int ,int,int ) ;

void batadv_mcast_init(struct batadv_priv *bat_priv)
{
 batadv_tvlv_handler_register(bat_priv, batadv_mcast_tvlv_ogm_handler,
         ((void*)0), BATADV_TVLV_MCAST, 2,
         BATADV_TVLV_HANDLER_OGM_CIFNOTFND);

 INIT_DELAYED_WORK(&bat_priv->mcast.work, batadv_mcast_mla_update);
 batadv_mcast_start_timer(bat_priv);
}
