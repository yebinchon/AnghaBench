
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;


 int BATADV_TVLV_DAT ;
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ;
 int ENOMEM ;
 int batadv_dat_start_timer (struct batadv_priv*) ;
 int batadv_dat_tvlv_container_update (struct batadv_priv*) ;
 int batadv_dat_tvlv_ogm_handler_v1 ;
 scalar_t__ batadv_hash_new (int) ;
 int batadv_tvlv_handler_register (struct batadv_priv*,int ,int *,int ,int,int ) ;

int batadv_dat_init(struct batadv_priv *bat_priv)
{
 if (bat_priv->dat.hash)
  return 0;

 bat_priv->dat.hash = batadv_hash_new(1024);

 if (!bat_priv->dat.hash)
  return -ENOMEM;

 batadv_dat_start_timer(bat_priv);

 batadv_tvlv_handler_register(bat_priv, batadv_dat_tvlv_ogm_handler_v1,
         ((void*)0), BATADV_TVLV_DAT, 1,
         BATADV_TVLV_HANDLER_OGM_CIFNOTFND);
 batadv_dat_tvlv_container_update(bat_priv);
 return 0;
}
