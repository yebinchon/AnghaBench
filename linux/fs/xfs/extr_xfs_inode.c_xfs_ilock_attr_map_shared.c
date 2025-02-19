
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {scalar_t__ di_aformat; } ;
struct xfs_inode {TYPE_2__* i_afp; TYPE_1__ i_d; } ;
struct TYPE_4__ {int if_flags; } ;


 scalar_t__ XFS_DINODE_FMT_BTREE ;
 int XFS_IFEXTENTS ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int xfs_ilock (struct xfs_inode*,int ) ;

uint
xfs_ilock_attr_map_shared(
 struct xfs_inode *ip)
{
 uint lock_mode = XFS_ILOCK_SHARED;

 if (ip->i_d.di_aformat == XFS_DINODE_FMT_BTREE &&
     (ip->i_afp->if_flags & XFS_IFEXTENTS) == 0)
  lock_mode = XFS_ILOCK_EXCL;
 xfs_ilock(ip, lock_mode);
 return lock_mode;
}
