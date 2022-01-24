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
struct xfs_inode {int /*<<< orphan*/  i_flags_lock; scalar_t__ i_ino; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_IRECLAIM ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*) ; 

void
FUNC5(
	struct xfs_inode	*ip)
{
	FUNC0(!FUNC4(ip));

	/*
	 * Because we use RCU freeing we need to ensure the inode always
	 * appears to be reclaimed with an invalid inode number when in the
	 * free state. The ip->i_flags_lock provides the barrier against lookup
	 * races.
	 */
	FUNC2(&ip->i_flags_lock);
	ip->i_flags = XFS_IRECLAIM;
	ip->i_ino = 0;
	FUNC3(&ip->i_flags_lock);

	FUNC1(ip);
}