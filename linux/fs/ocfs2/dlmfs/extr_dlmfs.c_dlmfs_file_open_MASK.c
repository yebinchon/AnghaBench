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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct file {struct dlmfs_filp_private* private_data; int /*<<< orphan*/  f_flags; } ;
struct dlmfs_inode_private {int /*<<< orphan*/  ip_lockres; } ;
struct dlmfs_filp_private {int fp_lock_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dlmfs_inode_private* FUNC1 (struct inode*) ; 
 int DLM_LKF_NOQUEUE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ETXTBSY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  O_APPEND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlmfs_filp_private*) ; 
 struct dlmfs_filp_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
			   struct file *file)
{
	int status, level, flags;
	struct dlmfs_filp_private *fp = NULL;
	struct dlmfs_inode_private *ip;

	if (FUNC2(inode->i_mode))
		FUNC0();

	FUNC6(0, "open called on inode %lu, flags 0x%x\n", inode->i_ino,
		file->f_flags);

	status = FUNC3(file->f_flags, &level, &flags);
	if (status < 0)
		goto bail;

	/* We don't want to honor O_APPEND at read/write time as it
	 * doesn't make sense for LVB writes. */
	file->f_flags &= ~O_APPEND;

	fp = FUNC5(sizeof(*fp), GFP_NOFS);
	if (!fp) {
		status = -ENOMEM;
		goto bail;
	}
	fp->fp_lock_level = level;

	ip = FUNC1(inode);

	status = FUNC7(&ip->ip_lockres, level, flags);
	if (status < 0) {
		/* this is a strange error to return here but I want
		 * to be able userspace to be able to distinguish a
		 * valid lock request from one that simply couldn't be
		 * granted. */
		if (flags & DLM_LKF_NOQUEUE && status == -EAGAIN)
			status = -ETXTBSY;
		FUNC4(fp);
		goto bail;
	}

	file->private_data = fp;
bail:
	return status;
}