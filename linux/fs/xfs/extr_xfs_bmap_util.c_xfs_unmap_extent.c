
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
typedef int xfs_filblks_t ;
typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int i_pdquot; int i_gdquot; int i_udquot; struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int tr_write; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 TYPE_1__* M_RES (struct xfs_mount*) ;
 int XFS_DIOSTRAT_SPACE_RES (struct xfs_mount*,int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_QMOPT_RES_REGBLKS ;
 int xfs_bunmapi (struct xfs_trans*,struct xfs_inode*,int ,int ,int ,int,int*) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_reserve_quota (struct xfs_trans*,struct xfs_mount*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
xfs_unmap_extent(
 struct xfs_inode *ip,
 xfs_fileoff_t startoffset_fsb,
 xfs_filblks_t len_fsb,
 int *done)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_trans *tp;
 uint resblks = XFS_DIOSTRAT_SPACE_RES(mp, 0);
 int error;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_write, resblks, 0, 0, &tp);
 if (error) {
  ASSERT(error == -ENOSPC || XFS_FORCED_SHUTDOWN(mp));
  return error;
 }

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 error = xfs_trans_reserve_quota(tp, mp, ip->i_udquot, ip->i_gdquot,
   ip->i_pdquot, resblks, 0, XFS_QMOPT_RES_REGBLKS);
 if (error)
  goto out_trans_cancel;

 xfs_trans_ijoin(tp, ip, 0);

 error = xfs_bunmapi(tp, ip, startoffset_fsb, len_fsb, 0, 2, done);
 if (error)
  goto out_trans_cancel;

 error = xfs_trans_commit(tp);
out_unlock:
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
 return error;

out_trans_cancel:
 xfs_trans_cancel(tp);
 goto out_unlock;
}
