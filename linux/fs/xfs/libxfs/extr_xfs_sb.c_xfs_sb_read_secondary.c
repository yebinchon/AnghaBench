
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_buf {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_AG_DADDR (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int XFS_SB_BLOCK (struct xfs_mount*) ;
 int XFS_SSB_REF ;
 int xfs_buf_set_ref (struct xfs_buf*,int ) ;
 int xfs_sb_buf_ops ;
 int xfs_trans_read_buf (struct xfs_mount*,struct xfs_trans*,int ,int ,int ,int ,struct xfs_buf**,int *) ;

int
xfs_sb_read_secondary(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 struct xfs_buf **bpp)
{
 struct xfs_buf *bp;
 int error;

 ASSERT(agno != 0 && agno != NULLAGNUMBER);
 error = xfs_trans_read_buf(mp, tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, agno, XFS_SB_BLOCK(mp)),
   XFS_FSS_TO_BB(mp, 1), 0, &bp, &xfs_sb_buf_ops);
 if (error)
  return error;
 xfs_buf_set_ref(bp, XFS_SSB_REF);
 *bpp = bp;
 return 0;
}
