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
struct inode {int dummy; } ;
struct fuse_conn {int no_fsyncdir; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUSE_FSYNCDIR ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct file *file, loff_t start, loff_t end,
			  int datasync)
{
	struct inode *inode = file->f_mapping->host;
	struct fuse_conn *fc = FUNC1(inode);
	int err;

	if (FUNC4(inode))
		return -EIO;

	if (fc->no_fsyncdir)
		return 0;

	FUNC2(inode);
	err = FUNC0(file, start, end, datasync, FUSE_FSYNCDIR);
	if (err == -ENOSYS) {
		fc->no_fsyncdir = 1;
		err = 0;
	}
	FUNC3(inode);

	return err;
}