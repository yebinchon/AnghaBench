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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_writecount; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FI_DROP_CACHE ; 
 int /*<<< orphan*/  FI_VOLATILE_FILE ; 
 int FMODE_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	/*
	 * f2fs_relase_file is called at every close calls. So we should
	 * not drop any inmemory pages by close called by other process.
	 */
	if (!(filp->f_mode & FMODE_WRITE) ||
			FUNC0(&inode->i_writecount) != 1)
		return 0;

	/* some remained atomic pages should discarded */
	if (FUNC3(inode))
		FUNC2(inode);
	if (FUNC4(inode)) {
		FUNC6(inode, FI_DROP_CACHE);
		FUNC5(inode->i_mapping);
		FUNC1(inode, FI_DROP_CACHE);
		FUNC1(inode, FI_VOLATILE_FILE);
		FUNC7(inode);
	}
	return 0;
}