#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_6__ {scalar_t__ sb_agcount; int /*<<< orphan*/  sb_blocklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_7__ {scalar_t__ shape_changes; scalar_t__ nr_ops; } ;
struct TYPE_8__ {TYPE_2__ refc; } ;
struct TYPE_9__ {TYPE_3__ priv; scalar_t__ agno; struct xfs_buf* agbp; } ;
struct TYPE_10__ {TYPE_4__ a; } ;
struct xfs_btree_cur {TYPE_5__ bc_private; int /*<<< orphan*/  bc_flags; int /*<<< orphan*/  bc_nlevels; int /*<<< orphan*/  bc_statoff; int /*<<< orphan*/ * bc_ops; int /*<<< orphan*/  bc_blocklog; int /*<<< orphan*/  bc_btnum; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct xfs_agf {int /*<<< orphan*/  agf_refcount_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_NOFS ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  XFS_BTNUM_REFC ; 
 int /*<<< orphan*/  XFS_BTREE_CRC_BLOCKS ; 
 struct xfs_agf* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfs_btree_cur* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_btree_cur_zone ; 
 int /*<<< orphan*/  xfs_refcountbt_ops ; 
 int /*<<< orphan*/  xs_refcbt_2 ; 

struct xfs_btree_cur *
FUNC5(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	struct xfs_buf		*agbp,
	xfs_agnumber_t		agno)
{
	struct xfs_agf		*agf = FUNC1(agbp);
	struct xfs_btree_cur	*cur;

	FUNC0(agno != NULLAGNUMBER);
	FUNC0(agno < mp->m_sb.sb_agcount);
	cur = FUNC4(xfs_btree_cur_zone, KM_NOFS);

	cur->bc_tp = tp;
	cur->bc_mp = mp;
	cur->bc_btnum = XFS_BTNUM_REFC;
	cur->bc_blocklog = mp->m_sb.sb_blocklog;
	cur->bc_ops = &xfs_refcountbt_ops;
	cur->bc_statoff = FUNC2(xs_refcbt_2);

	cur->bc_nlevels = FUNC3(agf->agf_refcount_level);

	cur->bc_private.a.agbp = agbp;
	cur->bc_private.a.agno = agno;
	cur->bc_flags |= XFS_BTREE_CRC_BLOCKS;

	cur->bc_private.a.priv.refc.nr_ops = 0;
	cur->bc_private.a.priv.refc.shape_changes = 0;

	return cur;
}