
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct dentry {int dummy; } ;


 int __d_add (struct dentry*,struct inode*) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;

void d_add(struct dentry *entry, struct inode *inode)
{
 if (inode) {
  security_d_instantiate(entry, inode);
  spin_lock(&inode->i_lock);
 }
 __d_add(entry, inode);
}
