
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 int _batadv_update_route (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*,struct batadv_neigh_node*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 struct batadv_neigh_node* batadv_orig_router_get (struct batadv_orig_node*,struct batadv_hard_iface*) ;

void batadv_update_route(struct batadv_priv *bat_priv,
    struct batadv_orig_node *orig_node,
    struct batadv_hard_iface *recv_if,
    struct batadv_neigh_node *neigh_node)
{
 struct batadv_neigh_node *router = ((void*)0);

 if (!orig_node)
  goto out;

 router = batadv_orig_router_get(orig_node, recv_if);

 if (router != neigh_node)
  _batadv_update_route(bat_priv, orig_node, recv_if, neigh_node);

out:
 if (router)
  batadv_neigh_node_put(router);
}
