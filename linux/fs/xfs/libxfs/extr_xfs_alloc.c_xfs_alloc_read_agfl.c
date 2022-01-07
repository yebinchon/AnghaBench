
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_7__ {int m_ddev_targp; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_buf_t ;
typedef scalar_t__ xfs_agnumber_t ;


 int ASSERT (int) ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_AGFL_DADDR (TYPE_1__*) ;
 int XFS_AGFL_REF ;
 int XFS_AG_DADDR (TYPE_1__*,scalar_t__,int ) ;
 int XFS_FSS_TO_BB (TYPE_1__*,int) ;
 int xfs_agfl_buf_ops ;
 int xfs_buf_set_ref (int *,int ) ;
 int xfs_trans_read_buf (TYPE_1__*,int *,int ,int ,int ,int ,int **,int *) ;

int
xfs_alloc_read_agfl(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_agnumber_t agno,
 xfs_buf_t **bpp)
{
 xfs_buf_t *bp;
 int error;

 ASSERT(agno != NULLAGNUMBER);
 error = xfs_trans_read_buf(
   mp, tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, agno, XFS_AGFL_DADDR(mp)),
   XFS_FSS_TO_BB(mp, 1), 0, &bp, &xfs_agfl_buf_ops);
 if (error)
  return error;
 xfs_buf_set_ref(bp, XFS_AGFL_REF);
 *bpp = bp;
 return 0;
}
