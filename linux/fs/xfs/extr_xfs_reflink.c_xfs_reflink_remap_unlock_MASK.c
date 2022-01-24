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
struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct xfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  XFS_MMAPLOCK_EXCL ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

void
FUNC4(
	struct file		*file_in,
	struct file		*file_out)
{
	struct inode		*inode_in = FUNC1(file_in);
	struct xfs_inode	*src = FUNC0(inode_in);
	struct inode		*inode_out = FUNC1(file_out);
	struct xfs_inode	*dest = FUNC0(inode_out);
	bool			same_inode = (inode_in == inode_out);

	FUNC3(dest, XFS_MMAPLOCK_EXCL);
	if (!same_inode)
		FUNC3(src, XFS_MMAPLOCK_EXCL);
	FUNC2(inode_out);
	if (!same_inode)
		FUNC2(inode_in);
}