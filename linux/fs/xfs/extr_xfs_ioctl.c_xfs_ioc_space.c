
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
typedef TYPE_2__ xfs_flock64_t ;
typedef int uint ;
struct xfs_inode {int dummy; } ;
struct inode {int i_flags; TYPE_1__* i_sb; int i_mode; } ;
struct iattr {scalar_t__ ia_size; int ia_valid; } ;
struct file {int f_mode; int f_flags; int f_pos; } ;
typedef enum xfs_prealloc_flags { ____Placeholder_xfs_prealloc_flags } xfs_prealloc_flags ;
struct TYPE_4__ {scalar_t__ s_maxbytes; } ;


 int ASSERT (int ) ;
 int ATTR_SIZE ;
 int BREAK_UNMAP ;
 int EBADF ;
 int EINVAL ;
 int EPERM ;
 int FMODE_NOCMTIME ;
 int FMODE_WRITE ;
 int O_DSYNC ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int S_ISREG (int ) ;
 int XFS_BMAPI_PREALLOC ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int XFS_IOLOCK_EXCL ;
 scalar_t__ XFS_ISIZE (struct xfs_inode*) ;
 int XFS_MMAPLOCK_EXCL ;
 int XFS_PREALLOC_CLEAR ;
 int XFS_PREALLOC_INVISIBLE ;
 int XFS_PREALLOC_SET ;
 int XFS_PREALLOC_SYNC ;
 int file_dentry (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int xfs_alloc_file_space (struct xfs_inode*,scalar_t__,scalar_t__,int ) ;
 int xfs_break_layouts (struct inode*,int*,int ) ;
 int xfs_free_file_space (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int xfs_ilock (struct xfs_inode*,int) ;
 int xfs_iunlock (struct xfs_inode*,int) ;
 int xfs_update_prealloc_flags (struct xfs_inode*,int) ;
 int xfs_vn_setattr_size (int ,struct iattr*) ;
 int xfs_zero_file_space (struct xfs_inode*,scalar_t__,scalar_t__) ;

int
xfs_ioc_space(
 struct file *filp,
 unsigned int cmd,
 xfs_flock64_t *bf)
{
 struct inode *inode = file_inode(filp);
 struct xfs_inode *ip = XFS_I(inode);
 struct iattr iattr;
 enum xfs_prealloc_flags flags = 0;
 uint iolock = XFS_IOLOCK_EXCL | XFS_MMAPLOCK_EXCL;
 int error;

 if (inode->i_flags & (S_IMMUTABLE|S_APPEND))
  return -EPERM;

 if (!(filp->f_mode & FMODE_WRITE))
  return -EBADF;

 if (!S_ISREG(inode->i_mode))
  return -EINVAL;

 if (filp->f_flags & O_DSYNC)
  flags |= XFS_PREALLOC_SYNC;
 if (filp->f_mode & FMODE_NOCMTIME)
  flags |= XFS_PREALLOC_INVISIBLE;

 error = mnt_want_write_file(filp);
 if (error)
  return error;

 xfs_ilock(ip, iolock);
 error = xfs_break_layouts(inode, &iolock, BREAK_UNMAP);
 if (error)
  goto out_unlock;

 switch (bf->l_whence) {
 case 0:
  break;
 case 1:
  bf->l_start += filp->f_pos;
  break;
 case 2:
  bf->l_start += XFS_ISIZE(ip);
  break;
 default:
  error = -EINVAL;
  goto out_unlock;
 }







 switch (cmd) {
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
  if (bf->l_len <= 0) {
   error = -EINVAL;
   goto out_unlock;
  }
  break;
 default:
  bf->l_len = 0;
  break;
 }

 if (bf->l_start < 0 ||
     bf->l_start > inode->i_sb->s_maxbytes ||
     bf->l_start + bf->l_len < 0 ||
     bf->l_start + bf->l_len >= inode->i_sb->s_maxbytes) {
  error = -EINVAL;
  goto out_unlock;
 }

 switch (cmd) {
 case 128:
  flags |= XFS_PREALLOC_SET;
  error = xfs_zero_file_space(ip, bf->l_start, bf->l_len);
  break;
 case 132:
 case 131:
  flags |= XFS_PREALLOC_SET;
  error = xfs_alloc_file_space(ip, bf->l_start, bf->l_len,
      XFS_BMAPI_PREALLOC);
  break;
 case 130:
 case 129:
  error = xfs_free_file_space(ip, bf->l_start, bf->l_len);
  break;
 case 136:
 case 135:
 case 134:
 case 133:
  flags |= XFS_PREALLOC_CLEAR;
  if (bf->l_start > XFS_ISIZE(ip)) {
   error = xfs_alloc_file_space(ip, XFS_ISIZE(ip),
     bf->l_start - XFS_ISIZE(ip), 0);
   if (error)
    goto out_unlock;
  }

  iattr.ia_valid = ATTR_SIZE;
  iattr.ia_size = bf->l_start;

  error = xfs_vn_setattr_size(file_dentry(filp), &iattr);
  break;
 default:
  ASSERT(0);
  error = -EINVAL;
 }

 if (error)
  goto out_unlock;

 error = xfs_update_prealloc_flags(ip, flags);

out_unlock:
 xfs_iunlock(ip, iolock);
 mnt_drop_write_file(filp);
 return error;
}
