
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct batadv_tvlv_gateway_data {scalar_t__ bandwidth_down; scalar_t__ bandwidth_up; } ;
struct TYPE_2__ {int mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int dummy; } ;
typedef int gateway ;


 scalar_t__ BATADV_GW_MODE_CLIENT ;
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ;
 scalar_t__ atomic_read (int *) ;
 int batadv_gw_check_election (struct batadv_priv*,struct batadv_orig_node*) ;
 int batadv_gw_node_update (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_gateway_data*) ;

__attribute__((used)) static void batadv_gw_tvlv_ogm_handler_v1(struct batadv_priv *bat_priv,
       struct batadv_orig_node *orig,
       u8 flags,
       void *tvlv_value, u16 tvlv_value_len)
{
 struct batadv_tvlv_gateway_data gateway, *gateway_ptr;




 if (flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND ||
     tvlv_value_len < sizeof(gateway)) {
  gateway.bandwidth_down = 0;
  gateway.bandwidth_up = 0;
 } else {
  gateway_ptr = tvlv_value;
  gateway.bandwidth_down = gateway_ptr->bandwidth_down;
  gateway.bandwidth_up = gateway_ptr->bandwidth_up;
  if (gateway.bandwidth_down == 0 ||
      gateway.bandwidth_up == 0) {
   gateway.bandwidth_down = 0;
   gateway.bandwidth_up = 0;
  }
 }

 batadv_gw_node_update(bat_priv, orig, &gateway);


 if (gateway.bandwidth_down != 0 &&
     atomic_read(&bat_priv->gw.mode) == BATADV_GW_MODE_CLIENT)
  batadv_gw_check_election(bat_priv, orig);
}
