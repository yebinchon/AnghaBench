
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct select_data {int dispose; struct dentry* victim; int found; struct dentry* start; } ;
struct dentry {struct dentry* d_parent; int d_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int __dentry_kill (struct dentry*) ;
 int __dput_to_list (struct dentry*,int *) ;
 int cond_resched () ;
 int d_walk (struct dentry*,struct select_data*,int ) ;
 int list_empty (int *) ;
 int rcu_read_unlock () ;
 int select_collect ;
 int select_collect2 ;
 int shrink_dentry_list (int *) ;
 int shrink_lock_dentry (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void shrink_dcache_parent(struct dentry *parent)
{
 for (;;) {
  struct select_data data = {.start = parent};

  INIT_LIST_HEAD(&data.dispose);
  d_walk(parent, &data, select_collect);

  if (!list_empty(&data.dispose)) {
   shrink_dentry_list(&data.dispose);
   continue;
  }

  cond_resched();
  if (!data.found)
   break;
  data.victim = ((void*)0);
  d_walk(parent, &data, select_collect2);
  if (data.victim) {
   struct dentry *parent;
   spin_lock(&data.victim->d_lock);
   if (!shrink_lock_dentry(data.victim)) {
    spin_unlock(&data.victim->d_lock);
    rcu_read_unlock();
   } else {
    rcu_read_unlock();
    parent = data.victim->d_parent;
    if (parent != data.victim)
     __dput_to_list(parent, &data.dispose);
    __dentry_kill(data.victim);
   }
  }
  if (!list_empty(&data.dispose))
   shrink_dentry_list(&data.dispose);
 }
}
