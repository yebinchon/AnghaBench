
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_dentry; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_find_alias (struct inode*) ;
 int hlist_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_find_alias(struct inode *inode)
{
 struct dentry *de = ((void*)0);

 if (!hlist_empty(&inode->i_dentry)) {
  spin_lock(&inode->i_lock);
  de = __d_find_alias(inode);
  spin_unlock(&inode->i_lock);
 }
 return de;
}
