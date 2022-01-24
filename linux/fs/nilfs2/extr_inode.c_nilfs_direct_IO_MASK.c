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
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  nilfs_get_block ; 

__attribute__((used)) static ssize_t
FUNC3(struct kiocb *iocb, struct iov_iter *iter)
{
	struct inode *inode = FUNC1(iocb->ki_filp);

	if (FUNC2(iter) == WRITE)
		return 0;

	/* Needs synchronization with the cleaner */
	return FUNC0(iocb, inode, iter, nilfs_get_block);
}