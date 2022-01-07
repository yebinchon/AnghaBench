
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int d_lock; int d_subdirs; int d_child; struct dentry* d_parent; int d_sb; } ;


 struct dentry* __d_alloc (int ,struct qstr const*) ;
 int __dget_dlock (struct dentry*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_alloc(struct dentry * parent, const struct qstr *name)
{
 struct dentry *dentry = __d_alloc(parent->d_sb, name);
 if (!dentry)
  return ((void*)0);
 spin_lock(&parent->d_lock);




 __dget_dlock(parent);
 dentry->d_parent = parent;
 list_add(&dentry->d_child, &parent->d_subdirs);
 spin_unlock(&parent->d_lock);

 return dentry;
}
