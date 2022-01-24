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
struct kiocb {scalar_t__ ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct iomap_ops {int dummy; } ;
struct inode {int /*<<< orphan*/  i_rwsem; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 unsigned int IOMAP_WRITE ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  dax_iomap_actor ; 
 scalar_t__ FUNC0 (struct inode*,scalar_t__,scalar_t__,unsigned int,struct iomap_ops const*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iov_iter*) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ssize_t
FUNC5(struct kiocb *iocb, struct iov_iter *iter,
		const struct iomap_ops *ops)
{
	struct address_space *mapping = iocb->ki_filp->f_mapping;
	struct inode *inode = mapping->host;
	loff_t pos = iocb->ki_pos, ret = 0, done = 0;
	unsigned flags = 0;

	if (FUNC2(iter) == WRITE) {
		FUNC4(&inode->i_rwsem);
		flags |= IOMAP_WRITE;
	} else {
		FUNC3(&inode->i_rwsem);
	}

	while (FUNC1(iter)) {
		ret = FUNC0(inode, pos, FUNC1(iter), flags, ops,
				iter, dax_iomap_actor);
		if (ret <= 0)
			break;
		pos += ret;
		done += ret;
	}

	iocb->ki_pos += done;
	return done ? done : ret;
}