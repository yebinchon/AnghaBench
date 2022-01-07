
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_inode {int i_pdquot; int i_gdquot; int i_udquot; int i_ino; struct xfs_mount* i_mount; } ;
typedef int int64_t ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 scalar_t__ XFS_IS_PQUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_QMOPT_ENOSPC ;
 int XFS_QMOPT_FORCE_RES ;
 int XFS_TRANS_DQ_RES_BLKS ;
 int XFS_TRANS_DQ_RES_RTBLKS ;
 int xfs_is_quota_inode (int *,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_trans_reserve_quota_bydquots (struct xfs_trans*,struct xfs_mount*,int ,int ,int ,int ,long,int) ;

int
xfs_trans_reserve_quota_nblks(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 int64_t nblks,
 long ninos,
 uint flags)
{
 struct xfs_mount *mp = ip->i_mount;

 if (!XFS_IS_QUOTA_RUNNING(mp) || !XFS_IS_QUOTA_ON(mp))
  return 0;
 if (XFS_IS_PQUOTA_ON(mp))
  flags |= XFS_QMOPT_ENOSPC;

 ASSERT(!xfs_is_quota_inode(&mp->m_sb, ip->i_ino));

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 ASSERT((flags & ~(XFS_QMOPT_FORCE_RES | XFS_QMOPT_ENOSPC)) ==
    XFS_TRANS_DQ_RES_RTBLKS ||
        (flags & ~(XFS_QMOPT_FORCE_RES | XFS_QMOPT_ENOSPC)) ==
    XFS_TRANS_DQ_RES_BLKS);




 return xfs_trans_reserve_quota_bydquots(tp, mp,
      ip->i_udquot, ip->i_gdquot,
      ip->i_pdquot,
      nblks, ninos, flags);
}
