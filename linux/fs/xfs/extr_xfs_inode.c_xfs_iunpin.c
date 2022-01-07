
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {TYPE_1__* i_itemp; int i_mount; } ;
struct TYPE_2__ {int ili_last_lsn; } ;


 int ASSERT (int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int _RET_IP_ ;
 int trace_xfs_inode_unpin_nowait (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int) ;
 int xfs_log_force_lsn (int ,int ,int ,int *) ;

__attribute__((used)) static void
xfs_iunpin(
 struct xfs_inode *ip)
{
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL|XFS_ILOCK_SHARED));

 trace_xfs_inode_unpin_nowait(ip, _RET_IP_);


 xfs_log_force_lsn(ip->i_mount, ip->i_itemp->ili_last_lsn, 0, ((void*)0));

}
