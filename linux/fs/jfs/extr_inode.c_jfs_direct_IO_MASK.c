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
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct kiocb*,struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 size_t FUNC2 (struct iov_iter*) ; 
 scalar_t__ FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  jfs_get_block ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static ssize_t FUNC6(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = file->f_mapping->host;
	size_t count = FUNC2(iter);
	ssize_t ret;

	ret = FUNC0(iocb, inode, iter, jfs_get_block);

	/*
	 * In case of error extending write may have instantiated a few
	 * blocks outside i_size. Trim these off again.
	 */
	if (FUNC5(FUNC3(iter) == WRITE && ret < 0)) {
		loff_t isize = FUNC1(inode);
		loff_t end = iocb->ki_pos + count;

		if (end > isize)
			FUNC4(mapping, end);
	}

	return ret;
}