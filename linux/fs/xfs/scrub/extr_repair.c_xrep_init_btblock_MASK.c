#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_btnum_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  agno; } ;
struct xfs_scrub {TYPE_1__ sa; struct xfs_mount* mp; struct xfs_trans* tp; } ;
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {struct xfs_buf_ops const* b_ops; int /*<<< orphan*/  b_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_BLFT_BTREE_BUF ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 struct xfs_buf* FUNC10 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC12(
	struct xfs_scrub		*sc,
	xfs_fsblock_t			fsb,
	struct xfs_buf			**bpp,
	xfs_btnum_t			btnum,
	const struct xfs_buf_ops	*ops)
{
	struct xfs_trans		*tp = sc->tp;
	struct xfs_mount		*mp = sc->mp;
	struct xfs_buf			*bp;

	FUNC6(mp, FUNC3(mp, fsb),
			FUNC2(mp, fsb), btnum);

	FUNC0(FUNC3(mp, fsb) == sc->sa.agno);
	bp = FUNC10(tp, mp->m_ddev_targp, FUNC5(mp, fsb),
			FUNC4(mp, 1), 0);
	FUNC8(bp, 0, FUNC1(bp->b_length));
	FUNC7(mp, bp, btnum, 0, 0, sc->sa.agno);
	FUNC9(tp, bp, XFS_BLFT_BTREE_BUF);
	FUNC11(tp, bp, 0, FUNC1(bp->b_length) - 1);
	bp->b_ops = ops;
	*bpp = bp;

	return 0;
}