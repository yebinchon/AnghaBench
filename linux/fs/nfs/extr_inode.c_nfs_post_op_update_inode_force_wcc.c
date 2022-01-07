
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;
struct inode {int i_lock; } ;


 int nfs_fattr_set_barrier (struct nfs_fattr*) ;
 int nfs_post_op_update_inode_force_wcc_locked (struct inode*,struct nfs_fattr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int nfs_post_op_update_inode_force_wcc(struct inode *inode, struct nfs_fattr *fattr)
{
 int status;

 spin_lock(&inode->i_lock);
 nfs_fattr_set_barrier(fattr);
 status = nfs_post_op_update_inode_force_wcc_locked(inode, fattr);
 spin_unlock(&inode->i_lock);
 return status;
}
