
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int dummy; } ;


 scalar_t__ BATADV_GW_MODE_CLIENT ;
 int BATADV_UEV_DEL ;
 int BATADV_UEV_GW ;
 scalar_t__ atomic_read (int *) ;
 struct batadv_gw_node* batadv_gw_get_selected_gw_node (struct batadv_priv*) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 int batadv_gw_select (struct batadv_priv*,int *) ;
 int batadv_throw_uevent (struct batadv_priv*,int ,int ,int *) ;

void batadv_gw_check_client_stop(struct batadv_priv *bat_priv)
{
 struct batadv_gw_node *curr_gw;

 if (atomic_read(&bat_priv->gw.mode) != BATADV_GW_MODE_CLIENT)
  return;

 curr_gw = batadv_gw_get_selected_gw_node(bat_priv);
 if (!curr_gw)
  return;




 batadv_gw_select(bat_priv, ((void*)0));




 batadv_throw_uevent(bat_priv, BATADV_UEV_GW, BATADV_UEV_DEL, ((void*)0));

 batadv_gw_node_put(curr_gw);
}
