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
typedef  int uint ;
struct xfs_log_item {int /*<<< orphan*/  li_flags; } ;
struct xfs_inode {scalar_t__ i_ino; TYPE_1__* i_itemp; } ;
struct TYPE_2__ {struct xfs_log_item ili_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int XFS_IOLOCK_EXCL ; 
 int XFS_IOLOCK_SHARED ; 
 int /*<<< orphan*/  XFS_LI_IN_AIL ; 
 int XFS_MMAPLOCK_EXCL ; 
 int XFS_MMAPLOCK_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

void
FUNC8(
	struct xfs_inode	*ip0,
	uint			ip0_mode,
	struct xfs_inode	*ip1,
	uint			ip1_mode)
{
	struct xfs_inode	*temp;
	uint			mode_temp;
	int			attempts = 0;
	struct xfs_log_item	*lp;

	FUNC0(FUNC2(ip0_mode) == 1);
	FUNC0(FUNC2(ip1_mode) == 1);
	FUNC0(!(ip0_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL)));
	FUNC0(!(ip1_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL)));
	FUNC0(!(ip0_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
	       !(ip0_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
	FUNC0(!(ip1_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
	       !(ip1_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
	FUNC0(!(ip1_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
	       !(ip0_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
	FUNC0(!(ip0_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
	       !(ip1_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));

	FUNC0(ip0->i_ino != ip1->i_ino);

	if (ip0->i_ino > ip1->i_ino) {
		temp = ip0;
		ip0 = ip1;
		ip1 = temp;
		mode_temp = ip0_mode;
		ip0_mode = ip1_mode;
		ip1_mode = mode_temp;
	}

 again:
	FUNC4(ip0, FUNC7(ip0_mode, 0));

	/*
	 * If the first lock we have locked is in the AIL, we must TRY to get
	 * the second lock. If we can't get it, we must release the first one
	 * and try again.
	 */
	lp = &ip0->i_itemp->ili_item;
	if (lp && FUNC3(XFS_LI_IN_AIL, &lp->li_flags)) {
		if (!FUNC5(ip1, FUNC7(ip1_mode, 1))) {
			FUNC6(ip0, ip0_mode);
			if ((++attempts % 5) == 0)
				FUNC1(1); /* Don't just spin the CPU */
			goto again;
		}
	} else {
		FUNC4(ip1, FUNC7(ip1_mode, 1));
	}
}