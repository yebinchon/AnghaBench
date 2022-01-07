
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tvlv_gateway_data {scalar_t__ bandwidth_up; scalar_t__ bandwidth_down; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 int batadv_gw_node_update (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_gateway_data*) ;

void batadv_gw_node_delete(struct batadv_priv *bat_priv,
      struct batadv_orig_node *orig_node)
{
 struct batadv_tvlv_gateway_data gateway;

 gateway.bandwidth_down = 0;
 gateway.bandwidth_up = 0;

 batadv_gw_node_update(bat_priv, orig_node, &gateway);
}
