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
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct kiocb*,struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*,scalar_t__) ; 
 size_t FUNC3 (struct iov_iter*) ; 
 scalar_t__ FUNC4 (struct iov_iter*) ; 
 int /*<<< orphan*/  reiserfs_get_blocks_direct_io ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	size_t count = FUNC3(iter);
	ssize_t ret;

	ret = FUNC0(iocb, inode, iter,
				 reiserfs_get_blocks_direct_io);

	/*
	 * In case of error extending write may have instantiated a few
	 * blocks outside i_size. Trim these off again.
	 */
	if (FUNC7(FUNC4(iter) == WRITE && ret < 0)) {
		loff_t isize = FUNC1(inode);
		loff_t end = iocb->ki_pos + count;

		if ((end > isize) && FUNC2(inode, isize) == 0) {
			FUNC6(inode, isize);
			FUNC5(inode);
		}
	}

	return ret;
}