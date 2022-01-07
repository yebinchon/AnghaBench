
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int refcount; } ;
struct batadv_gw_node {struct batadv_orig_node* orig_node; } ;


 struct batadv_gw_node* batadv_gw_get_selected_gw_node (struct batadv_priv*) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct batadv_orig_node *
batadv_gw_get_selected_orig(struct batadv_priv *bat_priv)
{
 struct batadv_gw_node *gw_node;
 struct batadv_orig_node *orig_node = ((void*)0);

 gw_node = batadv_gw_get_selected_gw_node(bat_priv);
 if (!gw_node)
  goto out;

 rcu_read_lock();
 orig_node = gw_node->orig_node;
 if (!orig_node)
  goto unlock;

 if (!kref_get_unless_zero(&orig_node->refcount))
  orig_node = ((void*)0);

unlock:
 rcu_read_unlock();
out:
 if (gw_node)
  batadv_gw_node_put(gw_node);
 return orig_node;
}
