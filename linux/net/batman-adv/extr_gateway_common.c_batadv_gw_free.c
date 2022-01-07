
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;


 int BATADV_TVLV_GW ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;
 int batadv_tvlv_handler_unregister (struct batadv_priv*,int ,int) ;

void batadv_gw_free(struct batadv_priv *bat_priv)
{
 batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_GW, 1);
 batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_GW, 1);
}
