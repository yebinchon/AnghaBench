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
struct TYPE_2__ {scalar_t__ di_aformat; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_da_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOATTR ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int FUNC1 (struct xfs_da_args*) ; 
 int FUNC2 (struct xfs_da_args*) ; 
 int FUNC3 (struct xfs_da_args*) ; 
 scalar_t__ FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int) ; 

int
FUNC7(
	struct xfs_inode	*ip,
	struct xfs_da_args	*args)
{
	FUNC0(FUNC6(ip, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));

	if (!FUNC5(ip))
		return -ENOATTR;
	else if (ip->i_d.di_aformat == XFS_DINODE_FMT_LOCAL)
		return FUNC3(args);
	else if (FUNC4(ip, XFS_ATTR_FORK))
		return FUNC1(args);
	else
		return FUNC2(args);
}