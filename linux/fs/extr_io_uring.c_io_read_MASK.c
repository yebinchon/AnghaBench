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
struct sqe_submit {int /*<<< orphan*/  needs_lock; } ;
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct io_kiocb {int flags; int result; int /*<<< orphan*/  ctx; struct kiocb rw; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ read_iter; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  READ ; 
 int REQ_F_ISREG ; 
 int REQ_F_LINK ; 
 int REQ_F_NOWAIT ; 
 int UIO_FASTIOV ; 
 int FUNC0 (struct file*,struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct io_kiocb*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sqe_submit const*,struct iovec**,struct iov_iter*) ; 
 int FUNC3 (struct io_kiocb*,struct sqe_submit const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,int) ; 
 size_t FUNC5 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iovec*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct file*,struct kiocb*,struct iov_iter*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct io_kiocb *req, const struct sqe_submit *s,
		   bool force_nonblock)
{
	struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
	struct kiocb *kiocb = &req->rw;
	struct iov_iter iter;
	struct file *file;
	size_t iov_count;
	ssize_t read_size, ret;

	ret = FUNC3(req, s, force_nonblock);
	if (ret)
		return ret;
	file = kiocb->ki_filp;

	if (FUNC9(!(file->f_mode & FMODE_READ)))
		return -EBADF;

	ret = FUNC2(req->ctx, READ, s, &iovec, &iter);
	if (ret < 0)
		return ret;

	read_size = ret;
	if (req->flags & REQ_F_LINK)
		req->result = read_size;

	iov_count = FUNC5(&iter);
	ret = FUNC8(READ, file, &kiocb->ki_pos, iov_count);
	if (!ret) {
		ssize_t ret2;

		if (file->f_op->read_iter)
			ret2 = FUNC0(file, kiocb, &iter);
		else
			ret2 = FUNC7(READ, file, kiocb, &iter);

		/*
		 * In case of a short read, punt to async. This can happen
		 * if we have data partially cached. Alternatively we can
		 * return the short read, in which case the application will
		 * need to issue another SQE and wait for it. That SQE will
		 * need async punt anyway, so it's more efficient to do it
		 * here.
		 */
		if (force_nonblock && !(req->flags & REQ_F_NOWAIT) &&
		    (req->flags & REQ_F_ISREG) &&
		    ret2 > 0 && ret2 < read_size)
			ret2 = -EAGAIN;
		/* Catch -EAGAIN return for forced non-blocking submission */
		if (!force_nonblock || ret2 != -EAGAIN) {
			FUNC4(kiocb, ret2);
		} else {
			/*
			 * If ->needs_lock is true, we're already in async
			 * context.
			 */
			if (!s->needs_lock)
				FUNC1(READ, req, iov_count);
			ret = -EAGAIN;
		}
	}
	FUNC6(iovec);
	return ret;
}