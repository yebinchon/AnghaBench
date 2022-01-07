
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; struct dentry* d_parent; } ;


 int DENTRY_D_LOCK_NESTED ;
 struct dentry* READ_ONCE (struct dentry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *__lock_parent(struct dentry *dentry)
{
 struct dentry *parent;
 rcu_read_lock();
 spin_unlock(&dentry->d_lock);
again:
 parent = READ_ONCE(dentry->d_parent);
 spin_lock(&parent->d_lock);
 if (unlikely(parent != dentry->d_parent)) {
  spin_unlock(&parent->d_lock);
  goto again;
 }
 rcu_read_unlock();
 if (parent != dentry)
  spin_lock_nested(&dentry->d_lock, DENTRY_D_LOCK_NESTED);
 else
  parent = ((void*)0);
 return parent;
}
