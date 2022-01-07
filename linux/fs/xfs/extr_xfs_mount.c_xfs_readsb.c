
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {scalar_t__ sb_magicnum; unsigned int sb_sectsize; } ;
struct xfs_mount {struct xfs_buf* m_sb_bp; int * m_ddev_targp; struct xfs_sb m_sb; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {struct xfs_buf_ops* b_ops; } ;


 int ASSERT (int ) ;
 int BTOBB (unsigned int) ;
 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int EINVAL ;
 int ENOSYS ;
 int XBF_NO_IOACCT ;
 int XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int XFS_MFSI_QUIET ;
 int XFS_SB_DADDR ;
 scalar_t__ XFS_SB_MAGIC ;
 int xfs_buf_read_uncached (int *,int ,int ,int ,struct xfs_buf**,struct xfs_buf_ops const*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_unlock (struct xfs_buf*) ;
 unsigned int xfs_getsize_buftarg (int *) ;
 int xfs_reinit_percpu_counters (struct xfs_mount*) ;
 struct xfs_buf_ops xfs_sb_buf_ops ;
 int xfs_sb_from_disk (struct xfs_sb*,int ) ;
 struct xfs_buf_ops xfs_sb_quiet_buf_ops ;
 int xfs_warn (struct xfs_mount*,char*,...) ;

int
xfs_readsb(
 struct xfs_mount *mp,
 int flags)
{
 unsigned int sector_size;
 struct xfs_buf *bp;
 struct xfs_sb *sbp = &mp->m_sb;
 int error;
 int loud = !(flags & XFS_MFSI_QUIET);
 const struct xfs_buf_ops *buf_ops;

 ASSERT(mp->m_sb_bp == ((void*)0));
 ASSERT(mp->m_ddev_targp != ((void*)0));
 sector_size = xfs_getsize_buftarg(mp->m_ddev_targp);
 buf_ops = ((void*)0);







reread:
 error = xfs_buf_read_uncached(mp->m_ddev_targp, XFS_SB_DADDR,
          BTOBB(sector_size), XBF_NO_IOACCT, &bp,
          buf_ops);
 if (error) {
  if (loud)
   xfs_warn(mp, "SB validate failed with error %d.", error);

  if (error == -EFSBADCRC)
   error = -EFSCORRUPTED;
  return error;
 }




 xfs_sb_from_disk(sbp, XFS_BUF_TO_SBP(bp));





 if (sbp->sb_magicnum != XFS_SB_MAGIC) {
  if (loud)
   xfs_warn(mp, "Invalid superblock magic number");
  error = -EINVAL;
  goto release_buf;
 }




 if (sector_size > sbp->sb_sectsize) {
  if (loud)
   xfs_warn(mp, "device supports %u byte sectors (not %u)",
    sector_size, sbp->sb_sectsize);
  error = -ENOSYS;
  goto release_buf;
 }

 if (buf_ops == ((void*)0)) {




  xfs_buf_relse(bp);
  sector_size = sbp->sb_sectsize;
  buf_ops = loud ? &xfs_sb_buf_ops : &xfs_sb_quiet_buf_ops;
  goto reread;
 }

 xfs_reinit_percpu_counters(mp);


 bp->b_ops = &xfs_sb_buf_ops;

 mp->m_sb_bp = bp;
 xfs_buf_unlock(bp);
 return 0;

release_buf:
 xfs_buf_relse(bp);
 return error;
}
