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
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  write_files; } ;
struct fuse_file {int /*<<< orphan*/  write_entry; } ;
struct file {struct fuse_file* private_data; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct file *file)
{
	struct inode *inode = FUNC0(file);
	struct fuse_inode *fi = FUNC1(inode);
	struct fuse_file *ff = file->private_data;
	/*
	 * file may be written through mmap, so chain it onto the
	 * inodes's write_file list
	 */
	FUNC4(&fi->lock);
	if (FUNC3(&ff->write_entry))
		FUNC2(&ff->write_entry, &fi->write_files);
	FUNC5(&fi->lock);
}