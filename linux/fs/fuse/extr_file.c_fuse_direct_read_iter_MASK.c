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
struct kiocb {int ki_flags; int /*<<< orphan*/  ki_pos; } ;
struct iov_iter {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct fuse_io_priv FUNC0 (struct kiocb*) ; 
 int IOCB_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_io_priv*,struct iov_iter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kiocb *iocb, struct iov_iter *to)
{
	ssize_t res;

	if (!FUNC3(iocb) && iocb->ki_flags & IOCB_DIRECT) {
		res = FUNC2(iocb, to);
	} else {
		struct fuse_io_priv io = FUNC0(iocb);

		res = FUNC1(&io, to, &iocb->ki_pos);
	}

	return res;
}