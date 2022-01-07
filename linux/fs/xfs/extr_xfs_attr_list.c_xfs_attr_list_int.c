
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {TYPE_1__* dp; } ;
typedef TYPE_2__ xfs_attr_list_context_t ;
typedef int uint ;


 int EIO ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_STATS_INC (int ,int ) ;
 int xfs_attr_list_int_ilocked (TYPE_2__*) ;
 int xfs_ilock_attr_map_shared (TYPE_1__*) ;
 int xfs_iunlock (TYPE_1__*,int ) ;
 int xs_attr_list ;

int
xfs_attr_list_int(
 xfs_attr_list_context_t *context)
{
 int error;
 xfs_inode_t *dp = context->dp;
 uint lock_mode;

 XFS_STATS_INC(dp->i_mount, xs_attr_list);

 if (XFS_FORCED_SHUTDOWN(dp->i_mount))
  return -EIO;

 lock_mode = xfs_ilock_attr_map_shared(dp);
 error = xfs_attr_list_int_ilocked(context);
 xfs_iunlock(dp, lock_mode);
 return error;
}
