
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; int d_lock; } ;


 int __d_drop (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int d_walk (struct dentry*,struct dentry**,int ) ;
 int detach_mounts (struct dentry*) ;
 int dput (struct dentry*) ;
 int find_submount ;
 int shrink_dcache_parent (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_invalidate(struct dentry *dentry)
{
 bool had_submounts = 0;
 spin_lock(&dentry->d_lock);
 if (d_unhashed(dentry)) {
  spin_unlock(&dentry->d_lock);
  return;
 }
 __d_drop(dentry);
 spin_unlock(&dentry->d_lock);


 if (!dentry->d_inode)
  return;

 shrink_dcache_parent(dentry);
 for (;;) {
  struct dentry *victim = ((void*)0);
  d_walk(dentry, &victim, find_submount);
  if (!victim) {
   if (had_submounts)
    shrink_dcache_parent(dentry);
   return;
  }
  had_submounts = 1;
  detach_mounts(victim);
  dput(victim);
 }
}
