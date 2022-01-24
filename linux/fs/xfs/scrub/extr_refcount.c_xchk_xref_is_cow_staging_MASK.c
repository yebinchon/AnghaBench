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
typedef  scalar_t__ xfs_extlen_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  refc_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int /*<<< orphan*/  sm; } ;
struct xfs_refcount_irec {int rc_startblock; int rc_refcount; scalar_t__ rc_blockcount; } ;

/* Variables and functions */
 int XFS_REFC_COW_START ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct xfs_refcount_irec*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*) ; 

void
FUNC5(
	struct xfs_scrub		*sc,
	xfs_agblock_t			agbno,
	xfs_extlen_t			len)
{
	struct xfs_refcount_irec	rc;
	bool				has_cowflag;
	int				has_refcount;
	int				error;

	if (!sc->sa.refc_cur || FUNC2(sc->sm))
		return;

	/* Find the CoW staging extent. */
	error = FUNC4(sc->sa.refc_cur,
			agbno + XFS_REFC_COW_START, &has_refcount);
	if (!FUNC1(sc, &error, &sc->sa.refc_cur))
		return;
	if (!has_refcount) {
		FUNC0(sc, sc->sa.refc_cur, 0);
		return;
	}

	error = FUNC3(sc->sa.refc_cur, &rc, &has_refcount);
	if (!FUNC1(sc, &error, &sc->sa.refc_cur))
		return;
	if (!has_refcount) {
		FUNC0(sc, sc->sa.refc_cur, 0);
		return;
	}

	/* CoW flag must be set, refcount must be 1. */
	has_cowflag = (rc.rc_startblock & XFS_REFC_COW_START);
	if (!has_cowflag || rc.rc_refcount != 1)
		FUNC0(sc, sc->sa.refc_cur, 0);

	/* Must be at least as long as what was passed in */
	if (rc.rc_blockcount < len)
		FUNC0(sc, sc->sa.refc_cur, 0);
}