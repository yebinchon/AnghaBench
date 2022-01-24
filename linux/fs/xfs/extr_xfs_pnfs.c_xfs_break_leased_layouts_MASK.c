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
typedef  int /*<<< orphan*/  uint ;
struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 struct xfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  XFS_IOLOCK_EXCL ; 
 int /*<<< orphan*/  XFS_IOLOCK_SHARED ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC4(
	struct inode		*inode,
	uint			*iolock,
	bool			*did_unlock)
{
	struct xfs_inode	*ip = FUNC0(inode);
	int			error;

	while ((error = FUNC1(inode, false)) == -EWOULDBLOCK) {
		FUNC3(ip, *iolock);
		*did_unlock = true;
		error = FUNC1(inode, true);
		*iolock &= ~XFS_IOLOCK_SHARED;
		*iolock |= XFS_IOLOCK_EXCL;
		FUNC2(ip, *iolock);
	}

	return error;
}