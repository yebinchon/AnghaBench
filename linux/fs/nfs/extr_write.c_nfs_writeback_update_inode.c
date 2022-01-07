
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;
struct nfs_pgio_header {struct inode* inode; struct nfs_fattr fattr; } ;
struct inode {int i_lock; } ;


 int nfs_post_op_update_inode_force_wcc_locked (struct inode*,struct nfs_fattr*) ;
 int nfs_writeback_check_extend (struct nfs_pgio_header*,struct nfs_fattr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_writeback_update_inode(struct nfs_pgio_header *hdr)
{
 struct nfs_fattr *fattr = &hdr->fattr;
 struct inode *inode = hdr->inode;

 spin_lock(&inode->i_lock);
 nfs_writeback_check_extend(hdr, fattr);
 nfs_post_op_update_inode_force_wcc_locked(inode, fattr);
 spin_unlock(&inode->i_lock);
}
