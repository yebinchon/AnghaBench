
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list_lock; int curr_gw; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int refcount; } ;


 int batadv_gw_node_put (struct batadv_gw_node*) ;
 int kref_get (int *) ;
 int rcu_assign_pointer (int ,struct batadv_gw_node*) ;
 struct batadv_gw_node* rcu_dereference_protected (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_gw_select(struct batadv_priv *bat_priv,
        struct batadv_gw_node *new_gw_node)
{
 struct batadv_gw_node *curr_gw_node;

 spin_lock_bh(&bat_priv->gw.list_lock);

 if (new_gw_node)
  kref_get(&new_gw_node->refcount);

 curr_gw_node = rcu_dereference_protected(bat_priv->gw.curr_gw, 1);
 rcu_assign_pointer(bat_priv->gw.curr_gw, new_gw_node);

 if (curr_gw_node)
  batadv_gw_node_put(curr_gw_node);

 spin_unlock_bh(&bat_priv->gw.list_lock);
}
