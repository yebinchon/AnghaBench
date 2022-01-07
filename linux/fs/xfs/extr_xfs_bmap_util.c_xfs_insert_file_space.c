
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
typedef int loff_t ;
struct TYPE_2__ {int tr_write; } ;


 int ASSERT (int ) ;
 TYPE_1__* M_RES (struct xfs_mount*) ;
 int NULLFSBLOCK ;
 int XFS_B_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_IOLOCK_EXCL ;
 int XFS_MMAPLOCK_EXCL ;
 int trace_xfs_insert_file_space (struct xfs_inode*) ;
 int xfs_bmap_can_insert_extents (struct xfs_inode*,int ,int ) ;
 int xfs_bmap_insert_extents (struct xfs_trans*,struct xfs_inode*,int *,int ,int*,int ) ;
 int xfs_bmap_split_extent (struct xfs_inode*,int ) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_prepare_shift (struct xfs_inode*,int ) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_insert_file_space(
 struct xfs_inode *ip,
 loff_t offset,
 loff_t len)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_trans *tp;
 int error;
 xfs_fileoff_t stop_fsb = XFS_B_TO_FSB(mp, offset);
 xfs_fileoff_t next_fsb = NULLFSBLOCK;
 xfs_fileoff_t shift_fsb = XFS_B_TO_FSB(mp, len);
 bool done = 0;

 ASSERT(xfs_isilocked(ip, XFS_IOLOCK_EXCL));
 ASSERT(xfs_isilocked(ip, XFS_MMAPLOCK_EXCL));

 trace_xfs_insert_file_space(ip);

 error = xfs_bmap_can_insert_extents(ip, stop_fsb, shift_fsb);
 if (error)
  return error;

 error = xfs_prepare_shift(ip, offset);
 if (error)
  return error;






 error = xfs_bmap_split_extent(ip, stop_fsb);
 if (error)
  return error;

 while (!error && !done) {
  error = xfs_trans_alloc(mp, &M_RES(mp)->tr_write, 0, 0, 0,
     &tp);
  if (error)
   break;

  xfs_ilock(ip, XFS_ILOCK_EXCL);
  xfs_trans_ijoin(tp, ip, XFS_ILOCK_EXCL);
  error = xfs_bmap_insert_extents(tp, ip, &next_fsb, shift_fsb,
    &done, stop_fsb);
  if (error)
   goto out_trans_cancel;

  error = xfs_trans_commit(tp);
 }

 return error;

out_trans_cancel:
 xfs_trans_cancel(tp);
 return error;
}
