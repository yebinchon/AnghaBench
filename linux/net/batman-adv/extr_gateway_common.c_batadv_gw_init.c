
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sel_class; } ;
struct batadv_priv {TYPE_3__ gw; TYPE_2__* algo_ops; } ;
struct TYPE_4__ {int (* init_sel_class ) (struct batadv_priv*) ;} ;
struct TYPE_5__ {TYPE_1__ gw; } ;


 int BATADV_TVLV_GW ;
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ;
 int atomic_set (int *,int) ;
 int batadv_gw_tvlv_ogm_handler_v1 ;
 int batadv_tvlv_handler_register (struct batadv_priv*,int ,int *,int ,int,int ) ;
 int stub1 (struct batadv_priv*) ;

void batadv_gw_init(struct batadv_priv *bat_priv)
{
 if (bat_priv->algo_ops->gw.init_sel_class)
  bat_priv->algo_ops->gw.init_sel_class(bat_priv);
 else
  atomic_set(&bat_priv->gw.sel_class, 1);

 batadv_tvlv_handler_register(bat_priv, batadv_gw_tvlv_ogm_handler_v1,
         ((void*)0), BATADV_TVLV_GW, 1,
         BATADV_TVLV_HANDLER_OGM_CIFNOTFND);
}
