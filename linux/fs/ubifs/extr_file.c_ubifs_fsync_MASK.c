#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubifs_info {scalar_t__ ro_mount; } ;
struct inode {int i_state; TYPE_3__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_6__ {TYPE_1__* s_op; struct ubifs_info* s_fs_info; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {int (* write_inode ) (struct inode*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int I_DIRTY_DATASYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*,struct inode*) ; 

int FUNC6(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = file->f_mapping->host;
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	int err;

	FUNC0("syncing inode %lu", inode->i_ino);

	if (c->ro_mount)
		/*
		 * For some really strange reasons VFS does not filter out
		 * 'fsync()' for R/O mounted file-systems as per 2.6.39.
		 */
		return 0;

	err = FUNC1(file, start, end);
	if (err)
		return err;
	FUNC2(inode);

	/* Synchronize the inode unless this is a 'datasync()' call. */
	if (!datasync || (inode->i_state & I_DIRTY_DATASYNC)) {
		err = inode->i_sb->s_op->write_inode(inode, NULL);
		if (err)
			goto out;
	}

	/*
	 * Nodes related to this inode may still sit in a write-buffer. Flush
	 * them.
	 */
	err = FUNC5(c, inode);
out:
	FUNC3(inode);
	return err;
}