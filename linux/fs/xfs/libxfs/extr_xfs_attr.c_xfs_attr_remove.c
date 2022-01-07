
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {int m_flags; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_da_args {scalar_t__ trans; int op_flags; } ;
struct TYPE_2__ {int tr_attrrm; } ;


 int ATTR_KERNOTIME ;
 int ATTR_ROOT ;
 int EIO ;
 TYPE_1__* M_RES (struct xfs_mount*) ;
 int XFS_ATTRRM_SPACE_RES (struct xfs_mount*) ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_MOUNT_WSYNC ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 int XFS_TRANS_RESERVE ;
 int xfs_attr_args_init (struct xfs_da_args*,struct xfs_inode*,unsigned char const*,int) ;
 int xfs_attr_remove_args (struct xfs_da_args*) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_qm_dqattach (struct xfs_inode*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,scalar_t__*) ;
 int xfs_trans_cancel (scalar_t__) ;
 int xfs_trans_commit (scalar_t__) ;
 int xfs_trans_ichgtime (scalar_t__,struct xfs_inode*,int ) ;
 int xfs_trans_ijoin (scalar_t__,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (scalar_t__,struct xfs_inode*,int ) ;
 int xfs_trans_set_sync (scalar_t__) ;
 int xs_attr_remove ;

int
xfs_attr_remove(
 struct xfs_inode *dp,
 const unsigned char *name,
 int flags)
{
 struct xfs_mount *mp = dp->i_mount;
 struct xfs_da_args args;
 int error;

 XFS_STATS_INC(mp, xs_attr_remove);

 if (XFS_FORCED_SHUTDOWN(dp->i_mount))
  return -EIO;

 error = xfs_attr_args_init(&args, dp, name, flags);
 if (error)
  return error;






 args.op_flags = XFS_DA_OP_OKNOENT;

 error = xfs_qm_dqattach(dp);
 if (error)
  return error;





 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_attrrm,
   XFS_ATTRRM_SPACE_RES(mp), 0,
   (flags & ATTR_ROOT) ? XFS_TRANS_RESERVE : 0,
   &args.trans);
 if (error)
  return error;

 xfs_ilock(dp, XFS_ILOCK_EXCL);




 xfs_trans_ijoin(args.trans, dp, 0);

 error = xfs_attr_remove_args(&args);
 if (error)
  goto out;





 if (mp->m_flags & XFS_MOUNT_WSYNC)
  xfs_trans_set_sync(args.trans);

 if ((flags & ATTR_KERNOTIME) == 0)
  xfs_trans_ichgtime(args.trans, dp, XFS_ICHGTIME_CHG);




 xfs_trans_log_inode(args.trans, dp, XFS_ILOG_CORE);
 error = xfs_trans_commit(args.trans);
 xfs_iunlock(dp, XFS_ILOCK_EXCL);

 return error;

out:
 if (args.trans)
  xfs_trans_cancel(args.trans);
 xfs_iunlock(dp, XFS_ILOCK_EXCL);
 return error;
}
