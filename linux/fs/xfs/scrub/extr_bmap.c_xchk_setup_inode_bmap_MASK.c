#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {int ilock_flags; int /*<<< orphan*/  ip; TYPE_1__* sm; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {scalar_t__ sm_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_MMAPLOCK_EXCL ; 
 scalar_t__ XFS_SCRUB_TYPE_BMBTD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct xfs_scrub*,struct xfs_inode*) ; 
 int FUNC5 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int
FUNC7(
	struct xfs_scrub	*sc,
	struct xfs_inode	*ip)
{
	int			error;

	error = FUNC4(sc, ip);
	if (error)
		goto out;

	sc->ilock_flags = XFS_IOLOCK_EXCL | XFS_MMAPLOCK_EXCL;
	FUNC6(sc->ip, sc->ilock_flags);

	/*
	 * We don't want any ephemeral data fork updates sitting around
	 * while we inspect block mappings, so wait for directio to finish
	 * and flush dirty data if we have delalloc reservations.
	 */
	if (FUNC0(FUNC1(sc->ip)->i_mode) &&
	    sc->sm->sm_type == XFS_SCRUB_TYPE_BMBTD) {
		FUNC3(FUNC1(sc->ip));
		error = FUNC2(FUNC1(sc->ip)->i_mapping);
		if (error)
			goto out;
	}

	/* Got the inode, lock it and we're ready to go. */
	error = FUNC5(sc, 0);
	if (error)
		goto out;
	sc->ilock_flags |= XFS_ILOCK_EXCL;
	FUNC6(sc->ip, XFS_ILOCK_EXCL);

out:
	/* scrub teardown will unlock and release the inode */
	return error;
}