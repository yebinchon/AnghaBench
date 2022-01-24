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
struct xfs_attr_list_context {struct xfs_inode* dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int FUNC1 (struct xfs_attr_list_context*) ; 
 int FUNC2 (struct xfs_attr_list_context*) ; 
 int FUNC3 (struct xfs_attr_list_context*) ; 
 scalar_t__ FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int) ; 

int
FUNC7(
	struct xfs_attr_list_context	*context)
{
	struct xfs_inode		*dp = context->dp;

	FUNC0(FUNC6(dp, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));

	/*
	 * Decide on what work routines to call based on the inode size.
	 */
	if (!FUNC5(dp))
		return 0;
	else if (dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL)
		return FUNC3(context);
	else if (FUNC4(dp, XFS_ATTR_FORK))
		return FUNC1(context);
	return FUNC2(context);
}