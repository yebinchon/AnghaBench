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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  attr_version; } ;
struct fuse_file {int open_flags; } ;
struct fuse_conn {scalar_t__ writeback_cache; int /*<<< orphan*/  attr_version; scalar_t__ atomic_o_trunc; } ;
struct file {int f_flags; int f_mode; struct fuse_file* private_data; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int FOPEN_KEEP_CACHE ; 
 int FOPEN_NONSEEKABLE ; 
 int FOPEN_STREAM ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 struct fuse_inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct file*) ; 

void FUNC12(struct inode *inode, struct file *file)
{
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = FUNC4(inode);

	if (!(ff->open_flags & FOPEN_KEEP_CACHE))
		FUNC7(inode->i_mapping);
	if (ff->open_flags & FOPEN_STREAM)
		FUNC11(inode, file);
	else if (ff->open_flags & FOPEN_NONSEEKABLE)
		FUNC8(inode, file);
	if (fc->atomic_o_trunc && (file->f_flags & O_TRUNC)) {
		struct fuse_inode *fi = FUNC5(inode);

		FUNC9(&fi->lock);
		fi->attr_version = FUNC0(&fc->attr_version);
		FUNC6(inode, 0);
		FUNC10(&fi->lock);
		FUNC2(inode);
		if (fc->writeback_cache)
			FUNC1(file);
	}
	if ((file->f_mode & FMODE_WRITE) && fc->writeback_cache)
		FUNC3(file);
}