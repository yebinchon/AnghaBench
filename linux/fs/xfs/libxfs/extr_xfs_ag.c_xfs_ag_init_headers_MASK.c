#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sb_blocksize; } ;
struct xfs_mount {scalar_t__ m_ag_prealloc_blocks; TYPE_1__ m_sb; } ;
struct xfs_aghdr_grow_data {scalar_t__ daddr; int need_init; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * work; int /*<<< orphan*/  type; int /*<<< orphan*/  numblks; } ;
struct aghdr_init_data {scalar_t__ daddr; int /*<<< orphan*/  type; int /*<<< orphan*/  numblks; scalar_t__ agsize; int /*<<< orphan*/  nfree; int /*<<< orphan*/  agno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 
 scalar_t__ FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_BTNUM_FINO ; 
 int /*<<< orphan*/  XFS_BTNUM_INO ; 
 int /*<<< orphan*/  XFS_BTNUM_REFC ; 
 scalar_t__ XFS_BUF_DADDR_NULL ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_SB_DADDR ; 
 int FUNC12 (struct xfs_mount*,struct aghdr_init_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_agf_buf_ops ; 
 int /*<<< orphan*/  xfs_agfblock_init ; 
 int /*<<< orphan*/  xfs_agfl_buf_ops ; 
 int /*<<< orphan*/  xfs_agflblock_init ; 
 int /*<<< orphan*/  xfs_agi_buf_ops ; 
 int /*<<< orphan*/  xfs_agiblock_init ; 
 int /*<<< orphan*/  xfs_bnobt_buf_ops ; 
 int /*<<< orphan*/  xfs_bnoroot_init ; 
 int /*<<< orphan*/  xfs_btroot_init ; 
 int /*<<< orphan*/  xfs_cntbt_buf_ops ; 
 int /*<<< orphan*/  xfs_cntroot_init ; 
 int /*<<< orphan*/  xfs_finobt_buf_ops ; 
 int /*<<< orphan*/  xfs_inobt_buf_ops ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_mount*) ; 
 int /*<<< orphan*/  xfs_refcountbt_buf_ops ; 
 int /*<<< orphan*/  xfs_rmapbt_buf_ops ; 
 int /*<<< orphan*/  xfs_rmaproot_init ; 
 int /*<<< orphan*/  xfs_sb_buf_ops ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  xfs_sbblock_init ; 

int
FUNC17(
	struct xfs_mount	*mp,
	struct aghdr_init_data	*id)

{
	struct xfs_aghdr_grow_data aghdr_data[] = {
	{ /* SB */
		.daddr = FUNC5(mp, id->agno, XFS_SB_DADDR),
		.numblks = FUNC9(mp, 1),
		.ops = &xfs_sb_buf_ops,
		.work = &xfs_sbblock_init,
		.need_init = true
	},
	{ /* AGF */
		.daddr = FUNC5(mp, id->agno, FUNC3(mp)),
		.numblks = FUNC9(mp, 1),
		.ops = &xfs_agf_buf_ops,
		.work = &xfs_agfblock_init,
		.need_init = true
	},
	{ /* AGFL */
		.daddr = FUNC5(mp, id->agno, FUNC2(mp)),
		.numblks = FUNC9(mp, 1),
		.ops = &xfs_agfl_buf_ops,
		.work = &xfs_agflblock_init,
		.need_init = true
	},
	{ /* AGI */
		.daddr = FUNC5(mp, id->agno, FUNC4(mp)),
		.numblks = FUNC9(mp, 1),
		.ops = &xfs_agi_buf_ops,
		.work = &xfs_agiblock_init,
		.need_init = true
	},
	{ /* BNO root block */
		.daddr = FUNC1(mp, id->agno, FUNC6(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_bnobt_buf_ops,
		.work = &xfs_bnoroot_init,
		.need_init = true
	},
	{ /* CNT root block */
		.daddr = FUNC1(mp, id->agno, FUNC7(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_cntbt_buf_ops,
		.work = &xfs_cntroot_init,
		.need_init = true
	},
	{ /* INO root block */
		.daddr = FUNC1(mp, id->agno, FUNC10(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_inobt_buf_ops,
		.work = &xfs_btroot_init,
		.type = XFS_BTNUM_INO,
		.need_init = true
	},
	{ /* FINO root block */
		.daddr = FUNC1(mp, id->agno, FUNC8(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_finobt_buf_ops,
		.work = &xfs_btroot_init,
		.type = XFS_BTNUM_FINO,
		.need_init =  FUNC14(&mp->m_sb)
	},
	{ /* RMAP root block */
		.daddr = FUNC1(mp, id->agno, FUNC11(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_rmapbt_buf_ops,
		.work = &xfs_rmaproot_init,
		.need_init = FUNC16(&mp->m_sb)
	},
	{ /* REFC root block */
		.daddr = FUNC1(mp, id->agno, FUNC13(mp)),
		.numblks = FUNC0(mp->m_sb.sb_blocksize),
		.ops = &xfs_refcountbt_buf_ops,
		.work = &xfs_btroot_init,
		.type = XFS_BTNUM_REFC,
		.need_init = FUNC15(&mp->m_sb)
	},
	{ /* NULL terminating block */
		.daddr = XFS_BUF_DADDR_NULL,
	}
	};
	struct  xfs_aghdr_grow_data *dp;
	int			error = 0;

	/* Account for AG free space in new AG */
	id->nfree += id->agsize - mp->m_ag_prealloc_blocks;
	for (dp = &aghdr_data[0]; dp->daddr != XFS_BUF_DADDR_NULL; dp++) {
		if (!dp->need_init)
			continue;

		id->daddr = dp->daddr;
		id->numblks = dp->numblks;
		id->type = dp->type;
		error = FUNC12(mp, id, dp->work, dp->ops);
		if (error)
			break;
	}
	return error;
}