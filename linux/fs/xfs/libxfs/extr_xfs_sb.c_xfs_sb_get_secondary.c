
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_buf {int * b_ops; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_AG_DADDR (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int XFS_SB_BLOCK (struct xfs_mount*) ;
 int xfs_buf_oneshot (struct xfs_buf*) ;
 int xfs_sb_buf_ops ;
 struct xfs_buf* xfs_trans_get_buf (struct xfs_trans*,int ,int ,int ,int ) ;

int
xfs_sb_get_secondary(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 struct xfs_buf **bpp)
{
 struct xfs_buf *bp;

 ASSERT(agno != 0 && agno != NULLAGNUMBER);
 bp = xfs_trans_get_buf(tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, agno, XFS_SB_BLOCK(mp)),
   XFS_FSS_TO_BB(mp, 1), 0);
 if (!bp)
  return -ENOMEM;
 bp->b_ops = &xfs_sb_buf_ops;
 xfs_buf_oneshot(bp);
 *bpp = bp;
 return 0;
}
