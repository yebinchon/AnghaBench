
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr_gw; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int refcount; } ;


 int kref_get_unless_zero (int *) ;
 struct batadv_gw_node* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct batadv_gw_node *
batadv_gw_get_selected_gw_node(struct batadv_priv *bat_priv)
{
 struct batadv_gw_node *gw_node;

 rcu_read_lock();
 gw_node = rcu_dereference(bat_priv->gw.curr_gw);
 if (!gw_node)
  goto out;

 if (!kref_get_unless_zero(&gw_node->refcount))
  gw_node = ((void*)0);

out:
 rcu_read_unlock();
 return gw_node;
}
