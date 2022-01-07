
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_6__ {scalar_t__ sb_agcount; int sb_blocklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_7__ {scalar_t__ shape_changes; scalar_t__ nr_ops; } ;
struct TYPE_8__ {TYPE_2__ refc; } ;
struct TYPE_9__ {TYPE_3__ priv; scalar_t__ agno; struct xfs_buf* agbp; } ;
struct TYPE_10__ {TYPE_4__ a; } ;
struct xfs_btree_cur {TYPE_5__ bc_private; int bc_flags; int bc_nlevels; int bc_statoff; int * bc_ops; int bc_blocklog; int bc_btnum; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct xfs_agf {int agf_refcount_level; } ;


 int ASSERT (int) ;
 int KM_NOFS ;
 scalar_t__ NULLAGNUMBER ;
 int XFS_BTNUM_REFC ;
 int XFS_BTREE_CRC_BLOCKS ;
 struct xfs_agf* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 int XFS_STATS_CALC_INDEX (int ) ;
 int be32_to_cpu (int ) ;
 struct xfs_btree_cur* kmem_zone_zalloc (int ,int ) ;
 int xfs_btree_cur_zone ;
 int xfs_refcountbt_ops ;
 int xs_refcbt_2 ;

struct xfs_btree_cur *
xfs_refcountbt_init_cursor(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buf *agbp,
 xfs_agnumber_t agno)
{
 struct xfs_agf *agf = XFS_BUF_TO_AGF(agbp);
 struct xfs_btree_cur *cur;

 ASSERT(agno != NULLAGNUMBER);
 ASSERT(agno < mp->m_sb.sb_agcount);
 cur = kmem_zone_zalloc(xfs_btree_cur_zone, KM_NOFS);

 cur->bc_tp = tp;
 cur->bc_mp = mp;
 cur->bc_btnum = XFS_BTNUM_REFC;
 cur->bc_blocklog = mp->m_sb.sb_blocklog;
 cur->bc_ops = &xfs_refcountbt_ops;
 cur->bc_statoff = XFS_STATS_CALC_INDEX(xs_refcbt_2);

 cur->bc_nlevels = be32_to_cpu(agf->agf_refcount_level);

 cur->bc_private.a.agbp = agbp;
 cur->bc_private.a.agno = agno;
 cur->bc_flags |= XFS_BTREE_CRC_BLOCKS;

 cur->bc_private.a.priv.refc.nr_ops = 0;
 cur->bc_private.a.priv.refc.shape_changes = 0;

 return cur;
}
