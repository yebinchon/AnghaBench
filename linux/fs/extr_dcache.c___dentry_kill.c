
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_flags; int d_lock; TYPE_1__* d_op; scalar_t__ d_inode; int d_lockref; struct dentry* d_parent; } ;
struct TYPE_2__ {int (* d_release ) (struct dentry*) ;int (* d_prune ) (struct dentry*) ;} ;


 int DCACHE_LRU_LIST ;
 int DCACHE_MAY_FREE ;
 int DCACHE_OP_PRUNE ;
 int DCACHE_SHRINK_LIST ;
 int IS_ROOT (struct dentry*) ;
 int __d_drop (struct dentry*) ;
 int cond_resched () ;
 int d_lru_del (struct dentry*) ;
 int dentry_free (struct dentry*) ;
 int dentry_unlink_inode (struct dentry*) ;
 int dentry_unlist (struct dentry*,struct dentry*) ;
 scalar_t__ likely (int) ;
 int lockref_mark_dead (int *) ;
 int nr_dentry ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct dentry*) ;
 int stub2 (struct dentry*) ;
 int this_cpu_dec (int ) ;

__attribute__((used)) static void __dentry_kill(struct dentry *dentry)
{
 struct dentry *parent = ((void*)0);
 bool can_free = 1;
 if (!IS_ROOT(dentry))
  parent = dentry->d_parent;




 lockref_mark_dead(&dentry->d_lockref);





 if (dentry->d_flags & DCACHE_OP_PRUNE)
  dentry->d_op->d_prune(dentry);

 if (dentry->d_flags & DCACHE_LRU_LIST) {
  if (!(dentry->d_flags & DCACHE_SHRINK_LIST))
   d_lru_del(dentry);
 }

 __d_drop(dentry);
 dentry_unlist(dentry, parent);
 if (parent)
  spin_unlock(&parent->d_lock);
 if (dentry->d_inode)
  dentry_unlink_inode(dentry);
 else
  spin_unlock(&dentry->d_lock);
 this_cpu_dec(nr_dentry);
 if (dentry->d_op && dentry->d_op->d_release)
  dentry->d_op->d_release(dentry);

 spin_lock(&dentry->d_lock);
 if (dentry->d_flags & DCACHE_SHRINK_LIST) {
  dentry->d_flags |= DCACHE_MAY_FREE;
  can_free = 0;
 }
 spin_unlock(&dentry->d_lock);
 if (likely(can_free))
  dentry_free(dentry);
 cond_resched();
}
