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
typedef  int u32 ;
struct kstat {int /*<<< orphan*/  ino; int /*<<< orphan*/  mode; } ;
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  orig_ino; int /*<<< orphan*/  orig_i_mode; int /*<<< orphan*/  i_time; int /*<<< orphan*/  inval_mask; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int AT_STATX_DONT_SYNC ; 
 unsigned int AT_STATX_FORCE_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct kstat*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 
 struct fuse_inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file,
				struct kstat *stat, u32 request_mask,
				unsigned int flags)
{
	struct fuse_inode *fi = FUNC4(inode);
	int err = 0;
	bool sync;

	if (flags & AT_STATX_FORCE_SYNC)
		sync = true;
	else if (flags & AT_STATX_DONT_SYNC)
		sync = false;
	else if (request_mask & FUNC0(fi->inval_mask))
		sync = true;
	else
		sync = FUNC6(fi->i_time, FUNC5());

	if (sync) {
		FUNC1(inode);
		err = FUNC2(inode, stat, file);
	} else if (stat) {
		FUNC3(inode, stat);
		stat->mode = fi->orig_i_mode;
		stat->ino = fi->orig_ino;
	}

	return err;
}