
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_off_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int i_mount; int i_cowfp; } ;
struct TYPE_2__ {int tr_write; } ;


 int ASSERT (int ) ;
 TYPE_1__* M_RES (int ) ;
 scalar_t__ NULLFILEOFF ;
 scalar_t__ XFS_B_TO_FSB (int ,scalar_t__) ;
 scalar_t__ XFS_B_TO_FSBT (int ,scalar_t__) ;
 int XFS_ILOCK_EXCL ;
 int _RET_IP_ ;
 int trace_xfs_reflink_cancel_cow_range (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int trace_xfs_reflink_cancel_cow_range_error (struct xfs_inode*,int,int ) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_reflink_cancel_cow_blocks (struct xfs_inode*,struct xfs_trans**,scalar_t__,scalar_t__,int) ;
 int xfs_trans_alloc (int ,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_reflink_cancel_cow_range(
 struct xfs_inode *ip,
 xfs_off_t offset,
 xfs_off_t count,
 bool cancel_real)
{
 struct xfs_trans *tp;
 xfs_fileoff_t offset_fsb;
 xfs_fileoff_t end_fsb;
 int error;

 trace_xfs_reflink_cancel_cow_range(ip, offset, count);
 ASSERT(ip->i_cowfp);

 offset_fsb = XFS_B_TO_FSBT(ip->i_mount, offset);
 if (count == NULLFILEOFF)
  end_fsb = NULLFILEOFF;
 else
  end_fsb = XFS_B_TO_FSB(ip->i_mount, offset + count);


 error = xfs_trans_alloc(ip->i_mount, &M_RES(ip->i_mount)->tr_write,
   0, 0, 0, &tp);
 if (error)
  goto out;

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, ip, 0);


 error = xfs_reflink_cancel_cow_blocks(ip, &tp, offset_fsb, end_fsb,
   cancel_real);
 if (error)
  goto out_cancel;

 error = xfs_trans_commit(tp);

 xfs_iunlock(ip, XFS_ILOCK_EXCL);
 return error;

out_cancel:
 xfs_trans_cancel(tp);
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
out:
 trace_xfs_reflink_cancel_cow_range_error(ip, error, _RET_IP_);
 return error;
}
