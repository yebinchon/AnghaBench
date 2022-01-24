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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*,int) ; 
 int FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct file*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

int FUNC7(struct file *file)
{
	struct dentry *dentry = FUNC4(file);
	struct inode *inode = FUNC5(file);
	int kill;
	int error = 0;

	/*
	 * Fast path for nothing security related.
	 * As well for non-regular files, e.g. blkdev inodes.
	 * For example, blkdev_write_iter() might get here
	 * trying to remove privs which it is not allowed to.
	 */
	if (FUNC0(inode) || !FUNC1(inode->i_mode))
		return 0;

	kill = FUNC3(dentry);
	if (kill < 0)
		return kill;
	if (kill)
		error = FUNC2(dentry, kill);
	if (!error)
		FUNC6(inode);

	return error;
}