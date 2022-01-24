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
typedef  scalar_t__ xfs_off_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_inode*,scalar_t__,scalar_t__) ; 

int
FUNC6(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		count)
{
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		offset_fsb = FUNC2(mp, offset);
	xfs_fileoff_t		end_fsb = FUNC1(mp, offset + count);
	xfs_filblks_t		count_fsb = end_fsb - offset_fsb;
	int			error;

	FUNC0(count != 0);

	FUNC3(ip, XFS_ILOCK_EXCL);
	error = FUNC5(ip, offset_fsb, count_fsb);
	FUNC4(ip, XFS_ILOCK_EXCL);
	return error;
}