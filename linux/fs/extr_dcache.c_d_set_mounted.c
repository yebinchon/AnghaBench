
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_flags; struct dentry* d_parent; } ;


 int DCACHE_MOUNTED ;
 int EBUSY ;
 int ENOENT ;
 int IS_ROOT (struct dentry*) ;
 int d_mountpoint (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int d_unlinked (struct dentry*) ;
 int rename_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

int d_set_mounted(struct dentry *dentry)
{
 struct dentry *p;
 int ret = -ENOENT;
 write_seqlock(&rename_lock);
 for (p = dentry->d_parent; !IS_ROOT(p); p = p->d_parent) {

  spin_lock(&p->d_lock);
  if (unlikely(d_unhashed(p))) {
   spin_unlock(&p->d_lock);
   goto out;
  }
  spin_unlock(&p->d_lock);
 }
 spin_lock(&dentry->d_lock);
 if (!d_unlinked(dentry)) {
  ret = -EBUSY;
  if (!d_mountpoint(dentry)) {
   dentry->d_flags |= DCACHE_MOUNTED;
   ret = 0;
  }
 }
  spin_unlock(&dentry->d_lock);
out:
 write_sequnlock(&rename_lock);
 return ret;
}
