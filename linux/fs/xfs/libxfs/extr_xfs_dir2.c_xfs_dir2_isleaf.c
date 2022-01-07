
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
struct xfs_da_args {TYPE_1__* geo; int dp; } ;
struct TYPE_2__ {scalar_t__ leafblk; scalar_t__ fsbcount; } ;


 int XFS_DATA_FORK ;
 int xfs_bmap_last_offset (int ,scalar_t__*,int ) ;

int
xfs_dir2_isleaf(
 struct xfs_da_args *args,
 int *vp)
{
 xfs_fileoff_t last;
 int rval;

 if ((rval = xfs_bmap_last_offset(args->dp, &last, XFS_DATA_FORK)))
  return rval;
 *vp = last == args->geo->leafblk + args->geo->fsbcount;
 return 0;
}
