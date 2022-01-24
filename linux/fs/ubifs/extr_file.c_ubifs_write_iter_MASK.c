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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, struct iov_iter *from)
{
	int err = FUNC2(FUNC0(iocb->ki_filp));
	if (err)
		return err;

	return FUNC1(iocb, from);
}