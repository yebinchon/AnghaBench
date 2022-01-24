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
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ LLONG_MAX ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct file*,int) ; 
 int FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 

int
FUNC6(struct file *file, loff_t start, loff_t end, int datasync)
{
	int ret;
	struct inode *inode = FUNC0(file);

	FUNC4(inode);

	do {
		ret = FUNC1(file, start, end);
		if (ret != 0)
			break;
		ret = FUNC2(file, datasync);
		if (!ret)
			ret = FUNC3(inode, !!datasync);
		/*
		 * If nfs_file_fsync_commit detected a server reboot, then
		 * resend all dirty pages that might have been covered by
		 * the NFS_CONTEXT_RESEND_WRITES flag
		 */
		start = 0;
		end = LLONG_MAX;
	} while (ret == -EAGAIN);

	FUNC5(inode, ret);
	return ret;
}