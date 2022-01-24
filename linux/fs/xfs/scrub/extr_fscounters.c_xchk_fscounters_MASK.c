#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {TYPE_2__* sm; struct xchk_fscounters* buf; struct xfs_mount* mp; } ;
struct TYPE_3__ {scalar_t__ sb_dblocks; } ;
struct xfs_mount {int /*<<< orphan*/  m_fdblocks; int /*<<< orphan*/  m_ifree; int /*<<< orphan*/  m_icount; TYPE_1__ m_sb; } ;
struct xchk_fscounters {scalar_t__ icount_min; scalar_t__ icount_max; int /*<<< orphan*/  fdblocks; int /*<<< orphan*/  ifree; int /*<<< orphan*/  icount; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int sm_flags; } ;

/* Variables and functions */
 scalar_t__ XCHK_FSCOUNT_MIN_VARIANCE ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int XFS_SCRUB_OFLAG_INCOMPLETE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xfs_scrub*,struct xchk_fscounters*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*) ; 

int
FUNC6(
	struct xfs_scrub	*sc)
{
	struct xfs_mount	*mp = sc->mp;
	struct xchk_fscounters	*fsc = sc->buf;
	int64_t			icount, ifree, fdblocks;
	int			error;

	/* Snapshot the percpu counters. */
	icount = FUNC1(&mp->m_icount);
	ifree = FUNC1(&mp->m_ifree);
	fdblocks = FUNC1(&mp->m_fdblocks);

	/* No negative values, please! */
	if (icount < 0 || ifree < 0 || fdblocks < 0)
		FUNC5(sc);

	/* See if icount is obviously wrong. */
	if (icount < fsc->icount_min || icount > fsc->icount_max)
		FUNC5(sc);

	/* See if fdblocks is obviously wrong. */
	if (fdblocks > mp->m_sb.sb_dblocks)
		FUNC5(sc);

	/*
	 * If ifree exceeds icount by more than the minimum variance then
	 * something's probably wrong with the counters.
	 */
	if (ifree > icount && ifree - icount > XCHK_FSCOUNT_MIN_VARIANCE)
		FUNC5(sc);

	/* Walk the incore AG headers to calculate the expected counters. */
	error = FUNC2(sc, fsc);
	if (!FUNC4(sc, 0, FUNC0(mp), &error))
		return error;
	if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_INCOMPLETE)
		return 0;

	/* Compare the in-core counters with whatever we counted. */
	if (!FUNC3(sc, icount, &mp->m_icount, fsc->icount))
		FUNC5(sc);

	if (!FUNC3(sc, ifree, &mp->m_ifree, fsc->ifree))
		FUNC5(sc);

	if (!FUNC3(sc, fdblocks, &mp->m_fdblocks,
			fsc->fdblocks))
		FUNC5(sc);

	return 0;
}