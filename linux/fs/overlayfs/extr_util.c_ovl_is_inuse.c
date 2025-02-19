
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_lock; } ;
struct dentry {int dummy; } ;


 int I_OVL_INUSE ;
 struct inode* d_inode (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool ovl_is_inuse(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 bool inuse;

 spin_lock(&inode->i_lock);
 inuse = (inode->i_state & I_OVL_INUSE);
 spin_unlock(&inode->i_lock);

 return inuse;
}
