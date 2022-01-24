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
struct kiocb {scalar_t__ ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 scalar_t__ EOPNOTSUPP ; 
 scalar_t__ EPERM ; 
 scalar_t__ ETXTBSY ; 
 int IOCB_DIRECT ; 
 int IOCB_NOWAIT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct kiocb*,struct iov_iter*) ; 
 struct inode* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_plug*) ; 
 scalar_t__ FUNC7 (struct kiocb*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct iov_iter*,scalar_t__) ; 

ssize_t FUNC11(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct inode *bd_inode = FUNC3(file);
	loff_t size = FUNC8(bd_inode);
	struct blk_plug plug;
	ssize_t ret;

	if (FUNC4(FUNC1(bd_inode)))
		return -EPERM;

	if (FUNC0(bd_inode))
		return -ETXTBSY;

	if (!FUNC9(from))
		return 0;

	if (iocb->ki_pos >= size)
		return -ENOSPC;

	if ((iocb->ki_flags & (IOCB_NOWAIT | IOCB_DIRECT)) == IOCB_NOWAIT)
		return -EOPNOTSUPP;

	FUNC10(from, size - iocb->ki_pos);

	FUNC6(&plug);
	ret = FUNC2(iocb, from);
	if (ret > 0)
		ret = FUNC7(iocb, ret);
	FUNC5(&plug);
	return ret;
}