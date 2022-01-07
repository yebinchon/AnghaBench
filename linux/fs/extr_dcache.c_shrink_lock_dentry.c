
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_2__ {int count; } ;
struct dentry {int d_lock; TYPE_1__ d_lockref; struct dentry* d_parent; struct inode* d_inode; } ;


 int DENTRY_D_LOCK_NESTED ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool shrink_lock_dentry(struct dentry *dentry)
{
 struct inode *inode;
 struct dentry *parent;

 if (dentry->d_lockref.count)
  return 0;

 inode = dentry->d_inode;
 if (inode && unlikely(!spin_trylock(&inode->i_lock))) {
  spin_unlock(&dentry->d_lock);
  spin_lock(&inode->i_lock);
  spin_lock(&dentry->d_lock);
  if (unlikely(dentry->d_lockref.count))
   goto out;

  if (unlikely(inode != dentry->d_inode))
   goto out;
 }

 parent = dentry->d_parent;
 if (IS_ROOT(dentry) || likely(spin_trylock(&parent->d_lock)))
  return 1;

 spin_unlock(&dentry->d_lock);
 spin_lock(&parent->d_lock);
 if (unlikely(parent != dentry->d_parent)) {
  spin_unlock(&parent->d_lock);
  spin_lock(&dentry->d_lock);
  goto out;
 }
 spin_lock_nested(&dentry->d_lock, DENTRY_D_LOCK_NESTED);
 if (likely(!dentry->d_lockref.count))
  return 1;
 spin_unlock(&parent->d_lock);
out:
 if (inode)
  spin_unlock(&inode->i_lock);
 return 0;
}
