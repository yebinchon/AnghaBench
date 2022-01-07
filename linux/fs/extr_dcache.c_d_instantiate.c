
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_2__ {int d_alias; } ;
struct dentry {TYPE_1__ d_u; } ;


 int BUG_ON (int) ;
 int __d_instantiate (struct dentry*,struct inode*) ;
 int hlist_unhashed (int *) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_instantiate(struct dentry *entry, struct inode * inode)
{
 BUG_ON(!hlist_unhashed(&entry->d_u.d_alias));
 if (inode) {
  security_d_instantiate(entry, inode);
  spin_lock(&inode->i_lock);
  __d_instantiate(entry, inode);
  spin_unlock(&inode->i_lock);
 }
}
