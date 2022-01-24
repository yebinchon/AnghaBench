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
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ READ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 size_t FUNC7 (struct iov_iter*) ; 
 scalar_t__ FUNC8 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,size_t,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC11(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	size_t count = FUNC7(iter);
	loff_t offset = iocb->ki_pos;
	ssize_t ret;

#ifdef CONFIG_FS_ENCRYPTION
	if (IS_ENCRYPTED(inode) && S_ISREG(inode->i_mode))
		return 0;
#endif
	if (FUNC6(inode))
		return 0;

	/*
	 * If we are doing data journalling we don't support O_DIRECT
	 */
	if (FUNC5(inode))
		return 0;

	/* Let buffer I/O handle the inline data case. */
	if (FUNC4(inode))
		return 0;

	FUNC9(inode, offset, count, FUNC8(iter));
	if (FUNC8(iter) == READ)
		ret = FUNC2(iocb, iter);
	else
		ret = FUNC3(iocb, iter);
	FUNC10(inode, offset, count, FUNC8(iter), ret);
	return ret;
}