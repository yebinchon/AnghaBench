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
struct xfs_inode {TYPE_1__* i_itemp; int /*<<< orphan*/  i_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  ili_last_lsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_inode	*ip)
{
	FUNC0(FUNC2(ip, XFS_ILOCK_EXCL|XFS_ILOCK_SHARED));

	FUNC1(ip, _RET_IP_);

	/* Give the log a push to start the unpinning I/O */
	FUNC3(ip->i_mount, ip->i_itemp->ili_last_lsn, 0, NULL);

}