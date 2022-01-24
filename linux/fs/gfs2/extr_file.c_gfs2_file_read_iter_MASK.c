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
struct kiocb {int ki_flags; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTBLK ; 
 int IOCB_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, struct iov_iter *to)
{
	ssize_t ret;

	if (iocb->ki_flags & IOCB_DIRECT) {
		ret = FUNC1(iocb, to);
		if (FUNC2(ret != -ENOTBLK))
			return ret;
		iocb->ki_flags &= ~IOCB_DIRECT;
	}
	return FUNC0(iocb, to);
}