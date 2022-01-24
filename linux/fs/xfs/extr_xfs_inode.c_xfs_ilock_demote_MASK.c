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
struct TYPE_6__ {int /*<<< orphan*/  i_mmaplock; int /*<<< orphan*/  i_lock; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int uint ;
struct TYPE_7__ {int /*<<< orphan*/  i_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_1__*) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_MMAPLOCK_EXCL ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void
FUNC5(
	xfs_inode_t		*ip,
	uint			lock_flags)
{
	FUNC0(lock_flags & (XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL));
	FUNC0((lock_flags &
		~(XFS_IOLOCK_EXCL|XFS_MMAPLOCK_EXCL|XFS_ILOCK_EXCL)) == 0);

	if (lock_flags & XFS_ILOCK_EXCL)
		FUNC3(&ip->i_lock);
	if (lock_flags & XFS_MMAPLOCK_EXCL)
		FUNC3(&ip->i_mmaplock);
	if (lock_flags & XFS_IOLOCK_EXCL)
		FUNC2(&FUNC1(ip)->i_rwsem);

	FUNC4(ip, lock_flags, _RET_IP_);
}