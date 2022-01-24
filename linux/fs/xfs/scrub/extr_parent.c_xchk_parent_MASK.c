#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_ino_t ;
struct xfs_scrub {int ilock_flags; int flags; TYPE_2__* ip; int /*<<< orphan*/  tp; struct xfs_mount* mp; } ;
struct TYPE_6__ {scalar_t__ sb_rootino; } ;
struct xfs_mount {TYPE_1__ m_sb; TYPE_2__* m_rootip; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_7__ {scalar_t__ i_ino; } ;

/* Variables and functions */
 int EDEADLOCK ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_2__*) ; 
 int XCHK_TRY_HARDER ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_MMAPLOCK_EXCL ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_scrub*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  xfs_name_dotdot ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*,scalar_t__) ; 

int
FUNC9(
	struct xfs_scrub	*sc)
{
	struct xfs_mount	*mp = sc->mp;
	xfs_ino_t		dnum;
	bool			try_again;
	int			tries = 0;
	int			error = 0;

	/*
	 * If we're a directory, check that the '..' link points up to
	 * a directory that has one entry pointing to us.
	 */
	if (!FUNC0(FUNC1(sc->ip)->i_mode))
		return -ENOENT;

	/* We're not a special inode, are we? */
	if (!FUNC8(mp, sc->ip->i_ino)) {
		FUNC3(sc, XFS_DATA_FORK, 0);
		goto out;
	}

	/*
	 * The VFS grabs a read or write lock via i_rwsem before it reads
	 * or writes to a directory.  If we've gotten this far we've
	 * already obtained IOLOCK_EXCL, which (since 4.10) is the same as
	 * getting a write lock on i_rwsem.  Therefore, it is safe for us
	 * to drop the ILOCK here in order to do directory lookups.
	 */
	sc->ilock_flags &= ~(XFS_ILOCK_EXCL | XFS_MMAPLOCK_EXCL);
	FUNC7(sc->ip, XFS_ILOCK_EXCL | XFS_MMAPLOCK_EXCL);

	/* Look up '..' */
	error = FUNC6(sc->tp, sc->ip, &xfs_name_dotdot, &dnum, NULL);
	if (!FUNC2(sc, XFS_DATA_FORK, 0, &error))
		goto out;
	if (!FUNC8(mp, dnum)) {
		FUNC3(sc, XFS_DATA_FORK, 0);
		goto out;
	}

	/* Is this the root dir?  Then '..' must point to itself. */
	if (sc->ip == mp->m_rootip) {
		if (sc->ip->i_ino != mp->m_sb.sb_rootino ||
		    sc->ip->i_ino != dnum)
			FUNC3(sc, XFS_DATA_FORK, 0);
		goto out;
	}

	do {
		error = FUNC4(sc, dnum, &try_again);
		if (error)
			goto out;
	} while (try_again && ++tries < 20);

	/*
	 * We gave it our best shot but failed, so mark this scrub
	 * incomplete.  Userspace can decide if it wants to try again.
	 */
	if (try_again && tries == 20)
		FUNC5(sc);
out:
	/*
	 * If we failed to lock the parent inode even after a retry, just mark
	 * this scrub incomplete and return.
	 */
	if ((sc->flags & XCHK_TRY_HARDER) && error == -EDEADLOCK) {
		error = 0;
		FUNC5(sc);
	}
	return error;
}