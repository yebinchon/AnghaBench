
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ di_nblocks; } ;
struct xfs_inode {int i_ino; int i_mount; TYPE_1__ i_d; } ;
struct TYPE_4__ {scalar_t__ i_mode; } ;


 int EFSCORRUPTED ;
 int ENOENT ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 int XFS_IGET_CREATE ;
 int xfs_warn (int ,char*,int ,...) ;

__attribute__((used)) static int
xfs_iget_check_free_state(
 struct xfs_inode *ip,
 int flags)
{
 if (flags & XFS_IGET_CREATE) {

  if (VFS_I(ip)->i_mode != 0) {
   xfs_warn(ip->i_mount,
"Corruption detected! Free inode 0x%llx not marked free! (mode 0x%x)",
    ip->i_ino, VFS_I(ip)->i_mode);
   return -EFSCORRUPTED;
  }

  if (ip->i_d.di_nblocks != 0) {
   xfs_warn(ip->i_mount,
"Corruption detected! Free inode 0x%llx has blocks allocated!",
    ip->i_ino);
   return -EFSCORRUPTED;
  }
  return 0;
 }


 if (VFS_I(ip)->i_mode == 0)
  return -ENOENT;

 return 0;
}
