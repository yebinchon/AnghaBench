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
struct file {int f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  IMA_FS_BUSY ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ima_fs_flags ; 
 int /*<<< orphan*/  ima_policy_seqops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	if (!(filp->f_flags & O_WRONLY)) {
#ifndef	CONFIG_IMA_READ_POLICY
		return -EACCES;
#else
		if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
			return -EACCES;
		if (!capable(CAP_SYS_ADMIN))
			return -EPERM;
		return seq_open(filp, &ima_policy_seqops);
#endif
	}
	if (FUNC2(IMA_FS_BUSY, &ima_fs_flags))
		return -EBUSY;
	return 0;
}