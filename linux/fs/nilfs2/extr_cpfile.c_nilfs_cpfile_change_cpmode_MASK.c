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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  NILFS_CHECKPOINT 129 
#define  NILFS_SNAPSHOT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *cpfile, __u64 cno, int mode)
{
	int ret;

	switch (mode) {
	case NILFS_CHECKPOINT:
		if (FUNC0(cpfile->i_sb, cno))
			/*
			 * Current implementation does not have to protect
			 * plain read-only mounts since they are exclusive
			 * with a read/write mount and are protected from the
			 * cleaner.
			 */
			ret = -EBUSY;
		else
			ret = FUNC1(cpfile, cno);
		return ret;
	case NILFS_SNAPSHOT:
		return FUNC2(cpfile, cno);
	default:
		return -EINVAL;
	}
}