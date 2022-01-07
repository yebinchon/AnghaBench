
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int primary_if; } ;
struct batadv_hard_iface {int refcount; } ;


 int kref_get_unless_zero (int *) ;
 struct batadv_hard_iface* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct batadv_hard_iface *
batadv_primary_if_get_selected(struct batadv_priv *bat_priv)
{
 struct batadv_hard_iface *hard_iface;

 rcu_read_lock();
 hard_iface = rcu_dereference(bat_priv->primary_if);
 if (!hard_iface)
  goto out;

 if (!kref_get_unless_zero(&hard_iface->refcount))
  hard_iface = ((void*)0);

out:
 rcu_read_unlock();
 return hard_iface;
}
