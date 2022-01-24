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
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_LINKABLE ; 
 int S_IFCHR ; 
 TYPE_1__* FUNC0 (struct xfs_inode*) ; 
 int WHITEOUT_MODE ; 
 int FUNC1 (struct xfs_inode*,int,struct xfs_inode**) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*) ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_inode	*dp,
	struct xfs_inode	**wip)
{
	struct xfs_inode	*tmpfile;
	int			error;

	error = FUNC1(dp, S_IFCHR | WHITEOUT_MODE, &tmpfile);
	if (error)
		return error;

	/*
	 * Prepare the tmpfile inode as if it were created through the VFS.
	 * Complete the inode setup and flag it as linkable.  nlink is already
	 * zero, so we can skip the drop_nlink.
	 */
	FUNC3(tmpfile);
	FUNC2(tmpfile);
	FUNC0(tmpfile)->i_state |= I_LINKABLE;

	*wip = tmpfile;
	return 0;
}