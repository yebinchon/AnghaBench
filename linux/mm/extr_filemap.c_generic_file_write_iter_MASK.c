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
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC1 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC2 (struct kiocb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

ssize_t FUNC5(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	ssize_t ret;

	FUNC3(inode);
	ret = FUNC1(iocb, from);
	if (ret > 0)
		ret = FUNC0(iocb, from);
	FUNC4(inode);

	if (ret > 0)
		ret = FUNC2(iocb, ret);
	return ret;
}