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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fuse_file {int open_flags; TYPE_1__ readdir; } ;
struct file {struct fuse_file* private_data; } ;
struct dir_context {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FOPEN_CACHE_DIR ; 
 int UNCACHED ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,struct dir_context*) ; 
 int FUNC2 (struct file*,struct dir_context*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct file *file, struct dir_context *ctx)
{
	struct fuse_file *ff = file->private_data;
	struct inode *inode = FUNC0(file);
	int err;

	if (FUNC3(inode))
		return -EIO;

	FUNC4(&ff->readdir.lock);

	err = UNCACHED;
	if (ff->open_flags & FOPEN_CACHE_DIR)
		err = FUNC1(file, ctx);
	if (err == UNCACHED)
		err = FUNC2(file, ctx);

	FUNC5(&ff->readdir.lock);

	return err;
}