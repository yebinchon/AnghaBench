
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_suminfo_t ;
typedef scalar_t__ xfs_daddr_t ;
typedef int uint ;
struct xfs_sb {scalar_t__ sb_rblocks; int sb_rextslog; int sb_rbmblocks; int sb_blocksize; } ;
struct xfs_mount {int m_rsumlevels; int m_rsumsize; int * m_rtdev_targp; struct xfs_sb m_sb; int * m_rsumip; int m_rbmip; } ;
struct xfs_buf {int dummy; } ;


 int EFBIG ;
 int ENODEV ;
 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_FSB_TO_BB (struct xfs_mount*,int) ;
 int roundup (int,int ) ;
 int xfs_buf_read_uncached (int *,scalar_t__,scalar_t__,int ,struct xfs_buf**,int *) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_warn (struct xfs_mount*,char*,...) ;

int
xfs_rtmount_init(
 struct xfs_mount *mp)
{
 struct xfs_buf *bp;
 struct xfs_sb *sbp;
 xfs_daddr_t d;
 int error;

 sbp = &mp->m_sb;
 if (sbp->sb_rblocks == 0)
  return 0;
 if (mp->m_rtdev_targp == ((void*)0)) {
  xfs_warn(mp,
 "Filesystem has a realtime volume, use rtdev=device option");
  return -ENODEV;
 }
 mp->m_rsumlevels = sbp->sb_rextslog + 1;
 mp->m_rsumsize =
  (uint)sizeof(xfs_suminfo_t) * mp->m_rsumlevels *
  sbp->sb_rbmblocks;
 mp->m_rsumsize = roundup(mp->m_rsumsize, sbp->sb_blocksize);
 mp->m_rbmip = mp->m_rsumip = ((void*)0);



 d = (xfs_daddr_t)XFS_FSB_TO_BB(mp, mp->m_sb.sb_rblocks);
 if (XFS_BB_TO_FSB(mp, d) != mp->m_sb.sb_rblocks) {
  xfs_warn(mp, "realtime mount -- %llu != %llu",
   (unsigned long long) XFS_BB_TO_FSB(mp, d),
   (unsigned long long) mp->m_sb.sb_rblocks);
  return -EFBIG;
 }
 error = xfs_buf_read_uncached(mp->m_rtdev_targp,
     d - XFS_FSB_TO_BB(mp, 1),
     XFS_FSB_TO_BB(mp, 1), 0, &bp, ((void*)0));
 if (error) {
  xfs_warn(mp, "realtime device size check failed");
  return error;
 }
 xfs_buf_relse(bp);
 return 0;
}
