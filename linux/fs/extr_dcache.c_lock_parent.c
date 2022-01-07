
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; struct dentry* d_parent; } ;


 scalar_t__ IS_ROOT (struct dentry*) ;
 struct dentry* __lock_parent (struct dentry*) ;
 scalar_t__ likely (int ) ;
 int spin_trylock (int *) ;

__attribute__((used)) static inline struct dentry *lock_parent(struct dentry *dentry)
{
 struct dentry *parent = dentry->d_parent;
 if (IS_ROOT(dentry))
  return ((void*)0);
 if (likely(spin_trylock(&parent->d_lock)))
  return parent;
 return __lock_parent(dentry);
}
