
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct nfs_fattr {int valid; int size; int pre_size; int mtime; int pre_mtime; int ctime; int pre_ctime; int change_attr; int pre_change_attr; } ;
struct inode {int i_mode; void* i_mtime; void* i_ctime; } ;


 int NFS_ATTR_FATTR_CHANGE ;
 int NFS_ATTR_FATTR_CTIME ;
 int NFS_ATTR_FATTR_MTIME ;
 int NFS_ATTR_FATTR_PRECHANGE ;
 int NFS_ATTR_FATTR_PRECTIME ;
 int NFS_ATTR_FATTR_PREMTIME ;
 int NFS_ATTR_FATTR_PRESIZE ;
 int NFS_ATTR_FATTR_SIZE ;
 int NFS_INO_INVALID_DATA ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 scalar_t__ inode_eq_iversion_raw (struct inode*,int ) ;
 int inode_set_iversion_raw (struct inode*,int ) ;
 int nfs_have_writebacks (struct inode*) ;
 int nfs_set_cache_invalid (struct inode*,int ) ;
 scalar_t__ nfs_size_to_loff_t (int ) ;
 struct timespec timespec64_to_timespec (void*) ;
 scalar_t__ timespec_equal (struct timespec*,int *) ;
 void* timespec_to_timespec64 (int ) ;

__attribute__((used)) static void nfs_wcc_update_inode(struct inode *inode, struct nfs_fattr *fattr)
{
 struct timespec ts;

 if ((fattr->valid & NFS_ATTR_FATTR_PRECHANGE)
   && (fattr->valid & NFS_ATTR_FATTR_CHANGE)
   && inode_eq_iversion_raw(inode, fattr->pre_change_attr)) {
  inode_set_iversion_raw(inode, fattr->change_attr);
  if (S_ISDIR(inode->i_mode))
   nfs_set_cache_invalid(inode, NFS_INO_INVALID_DATA);
 }

 ts = timespec64_to_timespec(inode->i_ctime);
 if ((fattr->valid & NFS_ATTR_FATTR_PRECTIME)
   && (fattr->valid & NFS_ATTR_FATTR_CTIME)
   && timespec_equal(&ts, &fattr->pre_ctime)) {
  inode->i_ctime = timespec_to_timespec64(fattr->ctime);
 }

 ts = timespec64_to_timespec(inode->i_mtime);
 if ((fattr->valid & NFS_ATTR_FATTR_PREMTIME)
   && (fattr->valid & NFS_ATTR_FATTR_MTIME)
   && timespec_equal(&ts, &fattr->pre_mtime)) {
  inode->i_mtime = timespec_to_timespec64(fattr->mtime);
  if (S_ISDIR(inode->i_mode))
   nfs_set_cache_invalid(inode, NFS_INO_INVALID_DATA);
 }
 if ((fattr->valid & NFS_ATTR_FATTR_PRESIZE)
   && (fattr->valid & NFS_ATTR_FATTR_SIZE)
   && i_size_read(inode) == nfs_size_to_loff_t(fattr->pre_size)
   && !nfs_have_writebacks(inode)) {
  i_size_write(inode, nfs_size_to_loff_t(fattr->size));
 }
}
