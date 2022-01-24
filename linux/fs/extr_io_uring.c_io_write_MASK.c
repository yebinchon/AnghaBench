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
struct sqe_submit {int /*<<< orphan*/  needs_lock; } ;
struct kiocb {int ki_flags; int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct io_kiocb {int flags; int result; int /*<<< orphan*/  ctx; struct kiocb rw; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {scalar_t__ write_iter; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int FMODE_WRITE ; 
 int IOCB_DIRECT ; 
 int IOCB_WRITE ; 
 int REQ_F_ISREG ; 
 int REQ_F_LINK ; 
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 int UIO_FASTIOV ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct kiocb*,struct iov_iter*) ; 
 TYPE_2__* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct io_kiocb*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sqe_submit const*,struct iovec**,struct iov_iter*) ; 
 int FUNC6 (struct io_kiocb*,struct sqe_submit const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kiocb*,int) ; 
 size_t FUNC8 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct iovec*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct file*,struct kiocb*,struct iov_iter*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct io_kiocb *req, const struct sqe_submit *s,
		    bool force_nonblock)
{
	struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
	struct kiocb *kiocb = &req->rw;
	struct iov_iter iter;
	struct file *file;
	size_t iov_count;
	ssize_t ret;

	ret = FUNC6(req, s, force_nonblock);
	if (ret)
		return ret;

	file = kiocb->ki_filp;
	if (FUNC12(!(file->f_mode & FMODE_WRITE)))
		return -EBADF;

	ret = FUNC5(req->ctx, WRITE, s, &iovec, &iter);
	if (ret < 0)
		return ret;

	if (req->flags & REQ_F_LINK)
		req->result = ret;

	iov_count = FUNC8(&iter);

	ret = -EAGAIN;
	if (force_nonblock && !(kiocb->ki_flags & IOCB_DIRECT)) {
		/* If ->needs_lock is true, we're already in async context. */
		if (!s->needs_lock)
			FUNC4(WRITE, req, iov_count);
		goto out_free;
	}

	ret = FUNC11(WRITE, file, &kiocb->ki_pos, iov_count);
	if (!ret) {
		ssize_t ret2;

		/*
		 * Open-code file_start_write here to grab freeze protection,
		 * which will be released by another thread in
		 * io_complete_rw().  Fool lockdep by telling it the lock got
		 * released so that it doesn't complain about the held lock when
		 * we return to userspace.
		 */
		if (req->flags & REQ_F_ISREG) {
			FUNC0(FUNC3(file)->i_sb,
						SB_FREEZE_WRITE, true);
			FUNC1(FUNC3(file)->i_sb,
						SB_FREEZE_WRITE);
		}
		kiocb->ki_flags |= IOCB_WRITE;

		if (file->f_op->write_iter)
			ret2 = FUNC2(file, kiocb, &iter);
		else
			ret2 = FUNC10(WRITE, file, kiocb, &iter);
		if (!force_nonblock || ret2 != -EAGAIN) {
			FUNC7(kiocb, ret2);
		} else {
			/*
			 * If ->needs_lock is true, we're already in async
			 * context.
			 */
			if (!s->needs_lock)
				FUNC4(WRITE, req, iov_count);
			ret = -EAGAIN;
		}
	}
out_free:
	FUNC9(iovec);
	return ret;
}