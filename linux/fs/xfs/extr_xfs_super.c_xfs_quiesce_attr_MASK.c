#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_mount {int /*<<< orphan*/  m_active_trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 
 int FUNC5 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*,char*) ; 

void
FUNC8(
	struct xfs_mount	*mp)
{
	int	error = 0;

	/* wait for all modifications to complete */
	while (FUNC1(&mp->m_active_trans) > 0)
		FUNC2(100);

	/* force the log to unpin objects from the now complete transactions */
	FUNC3(mp, XFS_LOG_SYNC);

	/* reclaim inodes to do any IO before the freeze completes */
	FUNC6(mp, 0);
	FUNC6(mp, SYNC_WAIT);

	/* Push the superblock and write an unmount record */
	error = FUNC5(mp);
	if (error)
		FUNC7(mp, "xfs_attr_quiesce: failed to log sb changes. "
				"Frozen image may not be consistent.");
	/*
	 * Just warn here till VFS can correctly support
	 * read-only remount without racing.
	 */
	FUNC0(FUNC1(&mp->m_active_trans) != 0);

	FUNC4(mp);
}