
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tvlv_gateway_data {int bandwidth_down; int bandwidth_up; } ;
struct TYPE_2__ {int list_lock; int generation; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int orig; } ;
struct batadv_gw_node {int bandwidth_down; int bandwidth_up; int list; } ;


 int BATADV_DBG_BATMAN ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,...) ;
 struct batadv_gw_node* batadv_gw_get_selected_gw_node (struct batadv_priv*) ;
 int batadv_gw_node_add (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_gateway_data*) ;
 struct batadv_gw_node* batadv_gw_node_get (struct batadv_priv*,struct batadv_orig_node*) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 int batadv_gw_reselect (struct batadv_priv*) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int ntohl (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_gw_node_update(struct batadv_priv *bat_priv,
      struct batadv_orig_node *orig_node,
      struct batadv_tvlv_gateway_data *gateway)
{
 struct batadv_gw_node *gw_node, *curr_gw = ((void*)0);

 spin_lock_bh(&bat_priv->gw.list_lock);
 gw_node = batadv_gw_node_get(bat_priv, orig_node);
 if (!gw_node) {
  batadv_gw_node_add(bat_priv, orig_node, gateway);
  spin_unlock_bh(&bat_priv->gw.list_lock);
  goto out;
 }
 spin_unlock_bh(&bat_priv->gw.list_lock);

 if (gw_node->bandwidth_down == ntohl(gateway->bandwidth_down) &&
     gw_node->bandwidth_up == ntohl(gateway->bandwidth_up))
  goto out;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Gateway bandwidth of originator %pM changed from %u.%u/%u.%u MBit to %u.%u/%u.%u MBit\n",
     orig_node->orig,
     gw_node->bandwidth_down / 10,
     gw_node->bandwidth_down % 10,
     gw_node->bandwidth_up / 10,
     gw_node->bandwidth_up % 10,
     ntohl(gateway->bandwidth_down) / 10,
     ntohl(gateway->bandwidth_down) % 10,
     ntohl(gateway->bandwidth_up) / 10,
     ntohl(gateway->bandwidth_up) % 10);

 gw_node->bandwidth_down = ntohl(gateway->bandwidth_down);
 gw_node->bandwidth_up = ntohl(gateway->bandwidth_up);

 if (ntohl(gateway->bandwidth_down) == 0) {
  batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
      "Gateway %pM removed from gateway list\n",
      orig_node->orig);




  spin_lock_bh(&bat_priv->gw.list_lock);
  if (!hlist_unhashed(&gw_node->list)) {
   hlist_del_init_rcu(&gw_node->list);
   batadv_gw_node_put(gw_node);
   bat_priv->gw.generation++;
  }
  spin_unlock_bh(&bat_priv->gw.list_lock);

  curr_gw = batadv_gw_get_selected_gw_node(bat_priv);
  if (gw_node == curr_gw)
   batadv_gw_reselect(bat_priv);

  if (curr_gw)
   batadv_gw_node_put(curr_gw);
 }

out:
 if (gw_node)
  batadv_gw_node_put(gw_node);
}
