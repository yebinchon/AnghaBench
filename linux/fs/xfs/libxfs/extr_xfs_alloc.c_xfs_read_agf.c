
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_buf {int b_error; } ;


 int ASSERT (int) ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_AGF_DADDR (struct xfs_mount*) ;
 int XFS_AGF_REF ;
 int XFS_AG_DADDR (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int trace_xfs_read_agf (struct xfs_mount*,scalar_t__) ;
 int xfs_agf_buf_ops ;
 int xfs_buf_set_ref (struct xfs_buf*,int ) ;
 int xfs_trans_read_buf (struct xfs_mount*,struct xfs_trans*,int ,int ,int ,int,struct xfs_buf**,int *) ;

int
xfs_read_agf(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 int flags,
 struct xfs_buf **bpp)
{
 int error;

 trace_xfs_read_agf(mp, agno);

 ASSERT(agno != NULLAGNUMBER);
 error = xfs_trans_read_buf(
   mp, tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, agno, XFS_AGF_DADDR(mp)),
   XFS_FSS_TO_BB(mp, 1), flags, bpp, &xfs_agf_buf_ops);
 if (error)
  return error;
 if (!*bpp)
  return 0;

 ASSERT(!(*bpp)->b_error);
 xfs_buf_set_ref(*bpp, XFS_AGF_REF);
 return 0;
}
