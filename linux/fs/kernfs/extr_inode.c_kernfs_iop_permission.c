
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;


 int ECHILD ;
 int MAY_NOT_BLOCK ;
 int generic_permission (struct inode*,int) ;
 int kernfs_mutex ;
 int kernfs_refresh_inode (struct kernfs_node*,struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kernfs_iop_permission(struct inode *inode, int mask)
{
 struct kernfs_node *kn;

 if (mask & MAY_NOT_BLOCK)
  return -ECHILD;

 kn = inode->i_private;

 mutex_lock(&kernfs_mutex);
 kernfs_refresh_inode(kn, inode);
 mutex_unlock(&kernfs_mutex);

 return generic_permission(inode, mask);
}
