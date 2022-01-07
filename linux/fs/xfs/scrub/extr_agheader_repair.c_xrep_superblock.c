
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_scrub {int tp; TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_buf {int b_length; } ;
struct TYPE_2__ {scalar_t__ sm_agno; } ;


 scalar_t__ BBTOB (int ) ;
 int EOPNOTSUPP ;
 int XFS_BLFT_SB_BUF ;
 int XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int xfs_buf_zero (struct xfs_buf*,int ,scalar_t__) ;
 int xfs_sb_get_secondary (struct xfs_mount*,int ,scalar_t__,struct xfs_buf**) ;
 int xfs_sb_to_disk (int ,int *) ;
 int xfs_trans_buf_set_type (int ,struct xfs_buf*,int ) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,scalar_t__) ;

int
xrep_superblock(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 struct xfs_buf *bp;
 xfs_agnumber_t agno;
 int error;


 agno = sc->sm->sm_agno;
 if (agno == 0)
  return -EOPNOTSUPP;

 error = xfs_sb_get_secondary(mp, sc->tp, agno, &bp);
 if (error)
  return error;


 xfs_buf_zero(bp, 0, BBTOB(bp->b_length));
 xfs_sb_to_disk(XFS_BUF_TO_SBP(bp), &mp->m_sb);


 xfs_trans_buf_set_type(sc->tp, bp, XFS_BLFT_SB_BUF);
 xfs_trans_log_buf(sc->tp, bp, 0, BBTOB(bp->b_length) - 1);
 return error;
}
