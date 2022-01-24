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

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct kiocb*,struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct iov_iter*) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  udf_get_block ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = mapping->host;
	size_t count = FUNC1(iter);
	ssize_t ret;

	ret = FUNC0(iocb, inode, iter, udf_get_block);
	if (FUNC4(ret < 0 && FUNC2(iter) == WRITE))
		FUNC3(mapping, iocb->ki_pos + count);
	return ret;
}