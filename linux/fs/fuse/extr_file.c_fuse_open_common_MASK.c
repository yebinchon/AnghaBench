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
struct fuse_conn {scalar_t__ writeback_cache; scalar_t__ atomic_o_trunc; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int O_TRUNC ; 
 int FUNC0 (struct fuse_conn*,int /*<<< orphan*/ ,struct file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 struct fuse_conn* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

int FUNC9(struct inode *inode, struct file *file, bool isdir)
{
	struct fuse_conn *fc = FUNC5(inode);
	int err;
	bool is_wb_truncate = (file->f_flags & O_TRUNC) &&
			  fc->atomic_o_trunc &&
			  fc->writeback_cache;

	err = FUNC4(inode, file);
	if (err)
		return err;

	if (is_wb_truncate) {
		FUNC7(inode);
		FUNC3(inode);
	}

	err = FUNC0(fc, FUNC6(inode), file, isdir);

	if (!err)
		FUNC1(inode, file);

	if (is_wb_truncate) {
		FUNC2(inode);
		FUNC8(inode);
	}

	return err;
}