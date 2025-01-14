
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_btnum_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_6__ {int sb_blocklog; } ;
struct xfs_mount {TYPE_3__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_4__ {int agno; struct xfs_buf* agbp; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; int bc_flags; int bc_blocklog; void* bc_statoff; int * bc_ops; void* bc_nlevels; scalar_t__ bc_btnum; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct xfs_agi {int agi_free_level; int agi_level; } ;


 int KM_NOFS ;
 scalar_t__ XFS_BTNUM_INO ;
 int XFS_BTREE_CRC_BLOCKS ;
 struct xfs_agi* XFS_BUF_TO_AGI (struct xfs_buf*) ;
 void* XFS_STATS_CALC_INDEX (int ) ;
 void* be32_to_cpu (int ) ;
 struct xfs_btree_cur* kmem_zone_zalloc (int ,int ) ;
 int xfs_btree_cur_zone ;
 int xfs_finobt_ops ;
 int xfs_inobt_ops ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_3__*) ;
 int xs_fibt_2 ;
 int xs_ibt_2 ;

struct xfs_btree_cur *
xfs_inobt_init_cursor(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buf *agbp,
 xfs_agnumber_t agno,
 xfs_btnum_t btnum)
{
 struct xfs_agi *agi = XFS_BUF_TO_AGI(agbp);
 struct xfs_btree_cur *cur;

 cur = kmem_zone_zalloc(xfs_btree_cur_zone, KM_NOFS);

 cur->bc_tp = tp;
 cur->bc_mp = mp;
 cur->bc_btnum = btnum;
 if (btnum == XFS_BTNUM_INO) {
  cur->bc_nlevels = be32_to_cpu(agi->agi_level);
  cur->bc_ops = &xfs_inobt_ops;
  cur->bc_statoff = XFS_STATS_CALC_INDEX(xs_ibt_2);
 } else {
  cur->bc_nlevels = be32_to_cpu(agi->agi_free_level);
  cur->bc_ops = &xfs_finobt_ops;
  cur->bc_statoff = XFS_STATS_CALC_INDEX(xs_fibt_2);
 }

 cur->bc_blocklog = mp->m_sb.sb_blocklog;

 if (xfs_sb_version_hascrc(&mp->m_sb))
  cur->bc_flags |= XFS_BTREE_CRC_BLOCKS;

 cur->bc_private.a.agbp = agbp;
 cur->bc_private.a.agno = agno;

 return cur;
}
