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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  xs_kobj; } ;
struct xfs_mount {int /*<<< orphan*/  m_kobj; TYPE_1__ m_stats; int /*<<< orphan*/  m_reclaim_work; int /*<<< orphan*/  m_ail; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_rootip; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_WAIT ; 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 int /*<<< orphan*/  XFS_MOUNT_UNMOUNTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  xfs_discard_wq ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct xfs_mount*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC23 (struct xfs_mount*,char*) ; 

void
FUNC24(
	struct xfs_mount	*mp)
{
	uint64_t		resblks;
	int			error;

	FUNC20(mp);
	FUNC9(mp);
	FUNC16(mp);
	FUNC19(mp);
	FUNC11(mp->m_rootip);

	/*
	 * We can potentially deadlock here if we have an inode cluster
	 * that has been freed has its buffer still pinned in memory because
	 * the transaction is still sitting in a iclog. The stale inodes
	 * on that buffer will have their flush locks held until the
	 * transaction hits the disk and the callbacks run. the inode
	 * flush takes the flush lock unconditionally and with nothing to
	 * push out the iclog we will never get that unlocked. hence we
	 * need to force the log first.
	 */
	FUNC12(mp, XFS_LOG_SYNC);

	/*
	 * Wait for all busy extents to be freed, including completion of
	 * any discard operation.
	 */
	FUNC7(mp);
	FUNC1(xfs_discard_wq);

	/*
	 * We now need to tell the world we are unmounting. This will allow
	 * us to detect that the filesystem is going away and we should error
	 * out anything that we have been retrying in the background. This will
	 * prevent neverending retries in AIL pushing from hanging the unmount.
	 */
	mp->m_flags |= XFS_MOUNT_UNMOUNTING;

	/*
	 * Flush all pending changes from the AIL.
	 */
	FUNC2(mp->m_ail);

	/*
	 * And reclaim all inodes.  At this point there should be no dirty
	 * inodes and none should be pinned or locked, but use synchronous
	 * reclaim just to be sure. We can stop background inode reclaim
	 * here as well if it is still running.
	 */
	FUNC0(&mp->m_reclaim_work);
	FUNC17(mp, SYNC_WAIT);
	FUNC10(mp);

	FUNC15(mp);

	/*
	 * Unreserve any blocks we have so that when we unmount we don't account
	 * the reserved free space as used. This is really only necessary for
	 * lazy superblock counting because it trusts the incore superblock
	 * counters to be absolutely correct on clean unmount.
	 *
	 * We don't bother correcting this elsewhere for lazy superblock
	 * counting because on mount of an unclean filesystem we reconstruct the
	 * correct counter value and this is irrelevant.
	 *
	 * For non-lazy counter filesystems, this doesn't matter at all because
	 * we only every apply deltas to the superblock and hence the incore
	 * value does not matter....
	 */
	resblks = 0;
	error = FUNC18(mp, &resblks, NULL);
	if (error)
		FUNC23(mp, "Unable to free reserved block pool. "
				"Freespace may not be correct on next mount.");

	error = FUNC13(mp);
	if (error)
		FUNC23(mp, "Unable to update superblock counters. "
				"Freespace may not be correct on next mount.");


	FUNC14(mp);
	FUNC3(mp);
	FUNC22(mp);

#if defined(DEBUG)
	xfs_errortag_clearall(mp);
#endif
	FUNC8(mp);

	FUNC6(mp);
	FUNC4(mp);
	FUNC21(&mp->m_stats.xs_kobj);
	FUNC21(&mp->m_kobj);
}