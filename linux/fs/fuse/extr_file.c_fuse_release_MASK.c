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
struct fuse_conn {scalar_t__ writeback_cache; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct fuse_conn *fc = FUNC1(inode);

	/* see fuse_vma_close() for !writeback_cache case */
	if (fc->writeback_cache)
		FUNC2(inode, 1);

	FUNC0(file, false);

	/* return value is ignored by VFS */
	return 0;
}