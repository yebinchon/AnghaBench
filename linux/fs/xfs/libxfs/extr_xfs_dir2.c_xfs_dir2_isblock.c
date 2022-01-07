
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
struct xfs_da_args {TYPE_2__* geo; TYPE_3__* dp; } ;
struct TYPE_4__ {scalar_t__ di_size; } ;
struct TYPE_6__ {TYPE_1__ i_d; int i_mount; } ;
struct TYPE_5__ {scalar_t__ blksize; } ;


 int EFSCORRUPTED ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_FSB_TO_B (int ,int ) ;
 int xfs_bmap_last_offset (TYPE_3__*,int *,int ) ;

int
xfs_dir2_isblock(
 struct xfs_da_args *args,
 int *vp)
{
 xfs_fileoff_t last;
 int rval;

 if ((rval = xfs_bmap_last_offset(args->dp, &last, XFS_DATA_FORK)))
  return rval;
 rval = XFS_FSB_TO_B(args->dp->i_mount, last) == args->geo->blksize;
 if (rval != 0 && args->dp->i_d.di_size != args->geo->blksize)
  return -EFSCORRUPTED;
 *vp = rval;
 return 0;
}
