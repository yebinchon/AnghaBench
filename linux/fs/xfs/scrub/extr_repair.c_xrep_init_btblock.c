
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_btnum_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int agno; } ;
struct xfs_scrub {TYPE_1__ sa; struct xfs_mount* mp; struct xfs_trans* tp; } ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {struct xfs_buf_ops const* b_ops; int b_length; } ;


 int ASSERT (int) ;
 scalar_t__ BBTOB (int ) ;
 int XFS_BLFT_BTREE_BUF ;
 int XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_BB (struct xfs_mount*,int) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,int ) ;
 int trace_xrep_init_btblock (struct xfs_mount*,int ,int ,int ) ;
 int xfs_btree_init_block (struct xfs_mount*,struct xfs_buf*,int ,int ,int ,int ) ;
 int xfs_buf_zero (struct xfs_buf*,int ,scalar_t__) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;
 struct xfs_buf* xfs_trans_get_buf (struct xfs_trans*,int ,int ,int ,int ) ;
 int xfs_trans_log_buf (struct xfs_trans*,struct xfs_buf*,int ,scalar_t__) ;

int
xrep_init_btblock(
 struct xfs_scrub *sc,
 xfs_fsblock_t fsb,
 struct xfs_buf **bpp,
 xfs_btnum_t btnum,
 const struct xfs_buf_ops *ops)
{
 struct xfs_trans *tp = sc->tp;
 struct xfs_mount *mp = sc->mp;
 struct xfs_buf *bp;

 trace_xrep_init_btblock(mp, XFS_FSB_TO_AGNO(mp, fsb),
   XFS_FSB_TO_AGBNO(mp, fsb), btnum);

 ASSERT(XFS_FSB_TO_AGNO(mp, fsb) == sc->sa.agno);
 bp = xfs_trans_get_buf(tp, mp->m_ddev_targp, XFS_FSB_TO_DADDR(mp, fsb),
   XFS_FSB_TO_BB(mp, 1), 0);
 xfs_buf_zero(bp, 0, BBTOB(bp->b_length));
 xfs_btree_init_block(mp, bp, btnum, 0, 0, sc->sa.agno);
 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_BTREE_BUF);
 xfs_trans_log_buf(tp, bp, 0, BBTOB(bp->b_length) - 1);
 bp->b_ops = ops;
 *bpp = bp;

 return 0;
}
