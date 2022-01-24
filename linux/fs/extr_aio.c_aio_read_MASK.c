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
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct iocb {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_iter; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  READ ; 
 int UIO_FASTIOV ; 
 int FUNC0 (struct kiocb*,struct iocb const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iocb const*,struct iovec**,int,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct iovec*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct kiocb *req, const struct iocb *iocb,
			bool vectored, bool compat)
{
	struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
	struct iov_iter iter;
	struct file *file;
	int ret;

	ret = FUNC0(req, iocb);
	if (ret)
		return ret;
	file = req->ki_filp;
	if (FUNC7(!(file->f_mode & FMODE_READ)))
		return -EBADF;
	ret = -EINVAL;
	if (FUNC7(!file->f_op->read_iter))
		return -EINVAL;

	ret = FUNC2(READ, iocb, &iovec, vectored, compat, &iter);
	if (ret < 0)
		return ret;
	ret = FUNC6(READ, file, &req->ki_pos, FUNC4(&iter));
	if (!ret)
		FUNC1(req, FUNC3(file, req, &iter));
	FUNC5(iovec);
	return ret;
}