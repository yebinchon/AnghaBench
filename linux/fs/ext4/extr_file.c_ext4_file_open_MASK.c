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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FMODE_NOWAIT ; 
 int FMODE_WRITE ; 
 int FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct file*) ; 
 int FUNC6 (struct inode*,struct file*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode * inode, struct file * filp)
{
	int ret;

	if (FUNC7(FUNC2(FUNC0(inode->i_sb))))
		return -EIO;

	ret = FUNC4(inode->i_sb, filp->f_path.mnt);
	if (ret)
		return ret;

	ret = FUNC5(inode, filp);
	if (ret)
		return ret;

	ret = FUNC6(inode, filp);
	if (ret)
		return ret;

	/*
	 * Set up the jbd2_inode if we are opening the inode for
	 * writing and the journal is present
	 */
	if (filp->f_mode & FMODE_WRITE) {
		ret = FUNC3(inode);
		if (ret < 0)
			return ret;
	}

	filp->f_mode |= FMODE_NOWAIT;
	return FUNC1(inode, filp);
}