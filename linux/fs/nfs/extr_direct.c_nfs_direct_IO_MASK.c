#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kiocb {TYPE_2__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 scalar_t__ FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*,struct iov_iter*) ; 

ssize_t FUNC6(struct kiocb *iocb, struct iov_iter *iter)
{
	struct inode *inode = iocb->ki_filp->f_mapping->host;

	/* we only support swap file calling nfs_direct_IO */
	if (!FUNC0(inode))
		return 0;

	FUNC1(FUNC2(iter) != PAGE_SIZE);

	if (FUNC3(iter) == READ)
		return FUNC4(iocb, iter);
	return FUNC5(iocb, iter);
}