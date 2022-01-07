
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
 int XFS_AGI_DADDR (struct xfs_mount*) ;
 int XFS_AGI_REF ;
 int XFS_AG_DADDR (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_BLFT_AGI_BUF ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int trace_xfs_read_agi (struct xfs_mount*,scalar_t__) ;
 int xfs_agi_buf_ops ;
 int xfs_buf_set_ref (struct xfs_buf*,int ) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;
 int xfs_trans_read_buf (struct xfs_mount*,struct xfs_trans*,int ,int ,int ,int ,struct xfs_buf**,int *) ;

int
xfs_read_agi(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 struct xfs_buf **bpp)
{
 int error;

 trace_xfs_read_agi(mp, agno);

 ASSERT(agno != NULLAGNUMBER);
 error = xfs_trans_read_buf(mp, tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, agno, XFS_AGI_DADDR(mp)),
   XFS_FSS_TO_BB(mp, 1), 0, bpp, &xfs_agi_buf_ops);
 if (error)
  return error;
 if (tp)
  xfs_trans_buf_set_type(tp, *bpp, XFS_BLFT_AGI_BUF);

 xfs_buf_set_ref(*bpp, XFS_AGI_REF);
 return 0;
}
