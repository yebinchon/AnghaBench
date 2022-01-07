
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; int pre_size; void* pre_mtime; void* pre_ctime; int pre_change_attr; } ;
struct inode {int i_mtime; int i_ctime; } ;


 int NFS_ATTR_FATTR ;
 int NFS_ATTR_FATTR_CHANGE ;
 int NFS_ATTR_FATTR_CTIME ;
 int NFS_ATTR_FATTR_MTIME ;
 int NFS_ATTR_FATTR_PRECHANGE ;
 int NFS_ATTR_FATTR_PRECTIME ;
 int NFS_ATTR_FATTR_PREMTIME ;
 int NFS_ATTR_FATTR_PRESIZE ;
 int NFS_ATTR_FATTR_SIZE ;
 int NFS_INO_INVALID_CHANGE ;
 int NFS_INO_INVALID_CTIME ;
 int NFS_INO_INVALID_MTIME ;
 int i_size_read (struct inode*) ;
 int inode_peek_iversion_raw (struct inode*) ;
 int nfs_inode_attrs_need_update (struct inode*,struct nfs_fattr*) ;
 int nfs_post_op_update_inode_locked (struct inode*,struct nfs_fattr*,int) ;
 void* timespec64_to_timespec (int ) ;

int nfs_post_op_update_inode_force_wcc_locked(struct inode *inode, struct nfs_fattr *fattr)
{
 int status;


 if ((fattr->valid & NFS_ATTR_FATTR) == 0 ||
   !nfs_inode_attrs_need_update(inode, fattr)) {
  fattr->valid &= ~(NFS_ATTR_FATTR_PRECHANGE
    | NFS_ATTR_FATTR_PRESIZE
    | NFS_ATTR_FATTR_PREMTIME
    | NFS_ATTR_FATTR_PRECTIME);
  goto out_noforce;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_CHANGE) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRECHANGE) == 0) {
  fattr->pre_change_attr = inode_peek_iversion_raw(inode);
  fattr->valid |= NFS_ATTR_FATTR_PRECHANGE;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_CTIME) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRECTIME) == 0) {
  fattr->pre_ctime = timespec64_to_timespec(inode->i_ctime);
  fattr->valid |= NFS_ATTR_FATTR_PRECTIME;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_MTIME) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PREMTIME) == 0) {
  fattr->pre_mtime = timespec64_to_timespec(inode->i_mtime);
  fattr->valid |= NFS_ATTR_FATTR_PREMTIME;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_SIZE) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRESIZE) == 0) {
  fattr->pre_size = i_size_read(inode);
  fattr->valid |= NFS_ATTR_FATTR_PRESIZE;
 }
out_noforce:
 status = nfs_post_op_update_inode_locked(inode, fattr,
   NFS_INO_INVALID_CHANGE
   | NFS_INO_INVALID_CTIME
   | NFS_INO_INVALID_MTIME);
 return status;
}
