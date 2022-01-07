
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct TYPE_3__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_ifork_ops {int * (* verify_symlink ) (struct xfs_inode*) ;int * (* verify_dir ) (struct xfs_inode*) ;} ;
struct TYPE_4__ {int i_mode; } ;




 int S_IFMT ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int * stub1 (struct xfs_inode*) ;
 int * stub2 (struct xfs_inode*) ;

xfs_failaddr_t
xfs_ifork_verify_data(
 struct xfs_inode *ip,
 struct xfs_ifork_ops *ops)
{

 if (ip->i_d.di_format != XFS_DINODE_FMT_LOCAL)
  return ((void*)0);


 switch (VFS_I(ip)->i_mode & S_IFMT) {
 case 129:
  return ops->verify_dir(ip);
 case 128:
  return ops->verify_symlink(ip);
 default:
  return ((void*)0);
 }
}
