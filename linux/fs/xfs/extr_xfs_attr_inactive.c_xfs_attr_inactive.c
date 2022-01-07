
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_3__ {scalar_t__ di_aformat; } ;
struct xfs_inode {scalar_t__ i_afp; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_4__ {int tr_attrinval; } ;


 int ASSERT (int) ;
 TYPE_2__* M_RES (struct xfs_mount*) ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_IFORK_Q (struct xfs_inode*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_NOT_DQATTACHED (struct xfs_mount*,struct xfs_inode*) ;
 int xfs_attr3_root_inactive (struct xfs_trans**,struct xfs_inode*) ;
 int xfs_attr_fork_remove (struct xfs_inode*,struct xfs_trans*) ;
 int xfs_idestroy_fork (struct xfs_inode*,int ) ;
 int xfs_ilock (struct xfs_inode*,int) ;
 scalar_t__ xfs_inode_hasattr (struct xfs_inode*) ;
 int xfs_itruncate_extents (struct xfs_trans**,struct xfs_inode*,int ,int ) ;
 int xfs_iunlock (struct xfs_inode*,int) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_attr_inactive(
 struct xfs_inode *dp)
{
 struct xfs_trans *trans;
 struct xfs_mount *mp;
 int lock_mode = XFS_ILOCK_SHARED;
 int error = 0;

 mp = dp->i_mount;
 ASSERT(! XFS_NOT_DQATTACHED(mp, dp));

 xfs_ilock(dp, lock_mode);
 if (!XFS_IFORK_Q(dp))
  goto out_destroy_fork;
 xfs_iunlock(dp, lock_mode);

 lock_mode = 0;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_attrinval, 0, 0, 0, &trans);
 if (error)
  goto out_destroy_fork;

 lock_mode = XFS_ILOCK_EXCL;
 xfs_ilock(dp, lock_mode);

 if (!XFS_IFORK_Q(dp))
  goto out_cancel;





 xfs_trans_ijoin(trans, dp, 0);







 if (xfs_inode_hasattr(dp) &&
     dp->i_d.di_aformat != XFS_DINODE_FMT_LOCAL) {
  error = xfs_attr3_root_inactive(&trans, dp);
  if (error)
   goto out_cancel;

  error = xfs_itruncate_extents(&trans, dp, XFS_ATTR_FORK, 0);
  if (error)
   goto out_cancel;
 }


 xfs_attr_fork_remove(dp, trans);

 error = xfs_trans_commit(trans);
 xfs_iunlock(dp, lock_mode);
 return error;

out_cancel:
 xfs_trans_cancel(trans);
out_destroy_fork:

 if (dp->i_afp)
  xfs_idestroy_fork(dp, XFS_ATTR_FORK);
 if (lock_mode)
  xfs_iunlock(dp, lock_mode);
 return error;
}
