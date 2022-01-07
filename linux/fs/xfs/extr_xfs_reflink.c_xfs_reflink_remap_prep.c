
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 scalar_t__ IS_DAX (struct inode*) ;
 struct xfs_inode* XFS_I (struct inode*) ;
 scalar_t__ XFS_ISIZE (struct xfs_inode*) ;
 scalar_t__ XFS_IS_REALTIME_INODE (struct xfs_inode*) ;
 int XFS_MMAPLOCK_EXCL ;
 struct inode* file_inode (struct file*) ;
 int generic_remap_file_range_prep (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__*,unsigned int) ;
 int xfs_flush_unmap_range (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iolock_two_inodes_and_break_layout (struct inode*,struct inode*) ;
 int xfs_lock_two_inodes (struct xfs_inode*,int ,struct xfs_inode*,int ) ;
 int xfs_qm_dqattach (struct xfs_inode*) ;
 int xfs_reflink_remap_unlock (struct file*,struct file*) ;
 int xfs_reflink_set_inode_flag (struct xfs_inode*,struct xfs_inode*) ;
 int xfs_reflink_zero_posteof (struct xfs_inode*,scalar_t__) ;

int
xfs_reflink_remap_prep(
 struct file *file_in,
 loff_t pos_in,
 struct file *file_out,
 loff_t pos_out,
 loff_t *len,
 unsigned int remap_flags)
{
 struct inode *inode_in = file_inode(file_in);
 struct xfs_inode *src = XFS_I(inode_in);
 struct inode *inode_out = file_inode(file_out);
 struct xfs_inode *dest = XFS_I(inode_out);
 bool same_inode = (inode_in == inode_out);
 ssize_t ret;


 ret = xfs_iolock_two_inodes_and_break_layout(inode_in, inode_out);
 if (ret)
  return ret;
 if (same_inode)
  xfs_ilock(src, XFS_MMAPLOCK_EXCL);
 else
  xfs_lock_two_inodes(src, XFS_MMAPLOCK_EXCL, dest,
    XFS_MMAPLOCK_EXCL);


 ret = -EINVAL;

 if (XFS_IS_REALTIME_INODE(src) || XFS_IS_REALTIME_INODE(dest))
  goto out_unlock;


 if (IS_DAX(inode_in) || IS_DAX(inode_out))
  goto out_unlock;

 ret = generic_remap_file_range_prep(file_in, pos_in, file_out, pos_out,
   len, remap_flags);
 if (ret < 0 || *len == 0)
  goto out_unlock;


 ret = xfs_qm_dqattach(dest);
 if (ret)
  goto out_unlock;





 ret = xfs_reflink_zero_posteof(dest, pos_out);
 if (ret)
  goto out_unlock;


 ret = xfs_reflink_set_inode_flag(src, dest);
 if (ret)
  goto out_unlock;






 if (pos_out > XFS_ISIZE(dest)) {
  loff_t flen = *len + (pos_out - XFS_ISIZE(dest));
  ret = xfs_flush_unmap_range(dest, XFS_ISIZE(dest), flen);
 } else {
  ret = xfs_flush_unmap_range(dest, pos_out, *len);
 }
 if (ret)
  goto out_unlock;

 return 1;
out_unlock:
 xfs_reflink_remap_unlock(file_in, file_out);
 return ret;
}
