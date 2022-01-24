#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mmaplock; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int uint ;
struct TYPE_7__ {int /*<<< orphan*/  i_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_1__*) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_IOLOCK_SHARED ; 
 int XFS_LOCK_MASK ; 
 int XFS_LOCK_SUBCLASS_MASK ; 
 int XFS_MMAPLOCK_EXCL ; 
 int XFS_MMAPLOCK_SHARED ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(
	xfs_inode_t		*ip,
	uint			lock_flags)
{
	/*
	 * You can't set both SHARED and EXCL for the same lock,
	 * and only XFS_IOLOCK_SHARED, XFS_IOLOCK_EXCL, XFS_ILOCK_SHARED,
	 * and XFS_ILOCK_EXCL are valid values to set in lock_flags.
	 */
	FUNC0((lock_flags & (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)) !=
	       (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL));
	FUNC0((lock_flags & (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL)) !=
	       (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL));
	FUNC0((lock_flags & (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)) !=
	       (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));
	FUNC0((lock_flags & ~(XFS_LOCK_MASK | XFS_LOCK_SUBCLASS_MASK)) == 0);
	FUNC0(lock_flags != 0);

	if (lock_flags & XFS_IOLOCK_EXCL)
		FUNC6(&FUNC1(ip)->i_rwsem);
	else if (lock_flags & XFS_IOLOCK_SHARED)
		FUNC5(&FUNC1(ip)->i_rwsem);

	if (lock_flags & XFS_MMAPLOCK_EXCL)
		FUNC2(&ip->i_mmaplock);
	else if (lock_flags & XFS_MMAPLOCK_SHARED)
		FUNC3(&ip->i_mmaplock);

	if (lock_flags & XFS_ILOCK_EXCL)
		FUNC2(&ip->i_lock);
	else if (lock_flags & XFS_ILOCK_SHARED)
		FUNC3(&ip->i_lock);

	FUNC4(ip, lock_flags, _RET_IP_);
}