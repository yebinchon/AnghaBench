
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct batadv_priv {TYPE_2__* algo_ops; int primary_if; } ;
struct batadv_hard_iface {int refcount; } ;
struct TYPE_3__ {int (* primary_set ) (struct batadv_hard_iface*) ;} ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 int ASSERT_RTNL () ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_primary_if_update_addr (struct batadv_priv*,struct batadv_hard_iface*) ;
 int kref_get (int *) ;
 int rcu_assign_pointer (int ,struct batadv_hard_iface*) ;
 struct batadv_hard_iface* rcu_dereference_protected (int ,int) ;
 int stub1 (struct batadv_hard_iface*) ;

__attribute__((used)) static void batadv_primary_if_select(struct batadv_priv *bat_priv,
         struct batadv_hard_iface *new_hard_iface)
{
 struct batadv_hard_iface *curr_hard_iface;

 ASSERT_RTNL();

 if (new_hard_iface)
  kref_get(&new_hard_iface->refcount);

 curr_hard_iface = rcu_dereference_protected(bat_priv->primary_if, 1);
 rcu_assign_pointer(bat_priv->primary_if, new_hard_iface);

 if (!new_hard_iface)
  goto out;

 bat_priv->algo_ops->iface.primary_set(new_hard_iface);
 batadv_primary_if_update_addr(bat_priv, curr_hard_iface);

out:
 if (curr_hard_iface)
  batadv_hardif_put(curr_hard_iface);
}
