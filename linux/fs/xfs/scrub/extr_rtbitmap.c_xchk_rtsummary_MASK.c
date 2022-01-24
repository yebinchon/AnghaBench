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
typedef  int uint ;
struct xfs_scrub {int ilock_flags; struct xfs_inode* ip; TYPE_1__* sm; TYPE_2__* mp; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_4__ {struct xfs_inode* m_rsumip; } ;
struct TYPE_3__ {int sm_flags; } ;

/* Variables and functions */
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_RTSUM ; 
 int XFS_SCRUB_OFLAG_CORRUPT ; 
 int FUNC0 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int) ; 

int
FUNC4(
	struct xfs_scrub	*sc)
{
	struct xfs_inode	*rsumip = sc->mp->m_rsumip;
	struct xfs_inode	*old_ip = sc->ip;
	uint			old_ilock_flags = sc->ilock_flags;
	int			error = 0;

	/*
	 * We ILOCK'd the rt bitmap ip in the setup routine, now lock the
	 * rt summary ip in compliance with the rt inode locking rules.
	 *
	 * Since we switch sc->ip to rsumip we have to save the old ilock
	 * flags so that we don't mix up the inode state that @sc tracks.
	 */
	sc->ip = rsumip;
	sc->ilock_flags = XFS_ILOCK_EXCL | XFS_ILOCK_RTSUM;
	FUNC2(sc->ip, sc->ilock_flags);

	/* Invoke the fork scrubber. */
	error = FUNC0(sc);
	if (error || (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT))
		goto out;

	/* XXX: implement this some day */
	FUNC1(sc);
out:
	/* Switch back to the rtbitmap inode and lock flags. */
	FUNC3(sc->ip, sc->ilock_flags);
	sc->ilock_flags = old_ilock_flags;
	sc->ip = old_ip;
	return error;
}