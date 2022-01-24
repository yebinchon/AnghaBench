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
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct TYPE_2__ {struct xfs_buf* agfl_bp; struct xfs_buf* agf_bp; int /*<<< orphan*/  agno; } ;
struct xfs_scrub {TYPE_1__ sa; int /*<<< orphan*/  tp; struct xfs_mount* mp; } ;
struct xfs_mount {int /*<<< orphan*/  m_ddev_targp; int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {int /*<<< orphan*/ * b_ops; } ;
struct xfs_bitmap {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_AG_RESV_AGFL ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  XFS_RMAP_OINFO_AG ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,TYPE_1__*) ; 
 int /*<<< orphan*/  xfs_agfl_buf_ops ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_bitmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_bitmap*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct xfs_scrub*,struct xfs_buf*,struct xfs_bitmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_scrub*,struct xfs_buf*,struct xfs_bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_scrub*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_scrub*,struct xfs_bitmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_scrub*) ; 

int
FUNC14(
	struct xfs_scrub	*sc)
{
	struct xfs_bitmap	agfl_extents;
	struct xfs_mount	*mp = sc->mp;
	struct xfs_buf		*agf_bp;
	struct xfs_buf		*agfl_bp;
	xfs_agblock_t		flcount;
	int			error;

	/* We require the rmapbt to rebuild anything. */
	if (!FUNC7(&mp->m_sb))
		return -EOPNOTSUPP;

	FUNC3(sc->mp, &sc->sa);
	FUNC6(&agfl_extents);

	/*
	 * Read the AGF so that we can query the rmapbt.  We hope that there's
	 * nothing wrong with the AGF, but all the AG header repair functions
	 * have this chicken-and-egg problem.
	 */
	error = FUNC4(mp, sc->tp, sc->sa.agno, 0, &agf_bp);
	if (error)
		return error;
	if (!agf_bp)
		return -ENOMEM;

	/*
	 * Make sure we have the AGFL buffer, as scrub might have decided it
	 * was corrupt after xfs_alloc_read_agfl failed with -EFSCORRUPTED.
	 */
	error = FUNC8(mp, sc->tp, mp->m_ddev_targp,
			FUNC1(mp, sc->sa.agno, FUNC0(mp)),
			FUNC2(mp, 1), 0, &agfl_bp, NULL);
	if (error)
		return error;
	agfl_bp->b_ops = &xfs_agfl_buf_ops;

	/* Gather all the extents we're going to put on the new AGFL. */
	error = FUNC9(sc, agf_bp, &agfl_extents, &flcount);
	if (error)
		goto err;

	/*
	 * Update AGF and AGFL.  We reset the global free block counter when
	 * we adjust the AGF flcount (which can fail) so avoid updating any
	 * buffers until we know that part works.
	 */
	FUNC11(sc, agf_bp, flcount);
	FUNC10(sc, agfl_bp, &agfl_extents, flcount);

	/*
	 * Ok, the AGFL should be ready to go now.  Roll the transaction to
	 * make the new AGFL permanent before we start using it to return
	 * freespace overflow to the freespace btrees.
	 */
	sc->sa.agf_bp = agf_bp;
	sc->sa.agfl_bp = agfl_bp;
	error = FUNC13(sc);
	if (error)
		goto err;

	/* Dump any AGFL overflow. */
	return FUNC12(sc, &agfl_extents, &XFS_RMAP_OINFO_AG,
			XFS_AG_RESV_AGFL);
err:
	FUNC5(&agfl_extents);
	return error;
}