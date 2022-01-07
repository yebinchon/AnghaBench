
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sx_fdtmp; scalar_t__ sx_fdtarget; } ;
typedef TYPE_1__ xfs_swapext_t ;
struct TYPE_10__ {scalar_t__ i_mount; scalar_t__ i_ino; } ;
typedef TYPE_2__ xfs_inode_t ;
struct fd {TYPE_7__* file; } ;
struct TYPE_11__ {int f_mode; int f_flags; int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_SWAPFILE (int ) ;
 int O_APPEND ;
 scalar_t__ XFS_FORCED_SHUTDOWN (scalar_t__) ;
 TYPE_2__* XFS_I (int ) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int file_inode (TYPE_7__*) ;
 int xfs_file_operations ;
 int xfs_swap_extents (TYPE_2__*,TYPE_2__*,TYPE_1__*) ;

int
xfs_ioc_swapext(
 xfs_swapext_t *sxp)
{
 xfs_inode_t *ip, *tip;
 struct fd f, tmp;
 int error = 0;


 f = fdget((int)sxp->sx_fdtarget);
 if (!f.file) {
  error = -EINVAL;
  goto out;
 }

 if (!(f.file->f_mode & FMODE_WRITE) ||
     !(f.file->f_mode & FMODE_READ) ||
     (f.file->f_flags & O_APPEND)) {
  error = -EBADF;
  goto out_put_file;
 }

 tmp = fdget((int)sxp->sx_fdtmp);
 if (!tmp.file) {
  error = -EINVAL;
  goto out_put_file;
 }

 if (!(tmp.file->f_mode & FMODE_WRITE) ||
     !(tmp.file->f_mode & FMODE_READ) ||
     (tmp.file->f_flags & O_APPEND)) {
  error = -EBADF;
  goto out_put_tmp_file;
 }

 if (IS_SWAPFILE(file_inode(f.file)) ||
     IS_SWAPFILE(file_inode(tmp.file))) {
  error = -EINVAL;
  goto out_put_tmp_file;
 }






 if (f.file->f_op != &xfs_file_operations ||
     tmp.file->f_op != &xfs_file_operations) {
  error = -EINVAL;
  goto out_put_tmp_file;
 }

 ip = XFS_I(file_inode(f.file));
 tip = XFS_I(file_inode(tmp.file));

 if (ip->i_mount != tip->i_mount) {
  error = -EINVAL;
  goto out_put_tmp_file;
 }

 if (ip->i_ino == tip->i_ino) {
  error = -EINVAL;
  goto out_put_tmp_file;
 }

 if (XFS_FORCED_SHUTDOWN(ip->i_mount)) {
  error = -EIO;
  goto out_put_tmp_file;
 }

 error = xfs_swap_extents(ip, tip, sxp);

 out_put_tmp_file:
 fdput(tmp);
 out_put_file:
 fdput(f);
 out:
 return error;
}
