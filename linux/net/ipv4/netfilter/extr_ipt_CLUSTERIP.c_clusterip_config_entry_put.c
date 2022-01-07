
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_net {int mutex; scalar_t__ procdir; int lock; } ;
struct clusterip_config {int pde; int list; int entries; int net; } ;


 struct clusterip_net* clusterip_pernet (int ) ;
 int list_del_rcu (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_remove (int ) ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
clusterip_config_entry_put(struct clusterip_config *c)
{
 struct clusterip_net *cn = clusterip_pernet(c->net);

 local_bh_disable();
 if (refcount_dec_and_lock(&c->entries, &cn->lock)) {
  list_del_rcu(&c->list);
  spin_unlock(&cn->lock);
  local_bh_enable();
  return;
 }
 local_bh_enable();
}
