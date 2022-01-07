
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ dat; } ;


 int BATADV_TVLV_DAT ;
 int batadv_dat_hash_free (struct batadv_priv*) ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;
 int batadv_tvlv_handler_unregister (struct batadv_priv*,int ,int) ;
 int cancel_delayed_work_sync (int *) ;

void batadv_dat_free(struct batadv_priv *bat_priv)
{
 batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_DAT, 1);
 batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_DAT, 1);

 cancel_delayed_work_sync(&bat_priv->dat.work);

 batadv_dat_hash_free(bat_priv);
}
