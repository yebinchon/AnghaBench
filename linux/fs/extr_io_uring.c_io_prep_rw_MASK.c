#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sqe_submit {struct io_uring_sqe* sqe; } ;
struct kiocb {int ki_flags; unsigned int ki_ioprio; int /*<<< orphan*/  ki_complete; TYPE_2__* ki_filp; int /*<<< orphan*/  ki_hint; void* ki_pos; } ;
struct io_uring_sqe {int /*<<< orphan*/  rw_flags; int /*<<< orphan*/  ioprio; int /*<<< orphan*/  off; } ;
struct io_ring_ctx {int flags; } ;
struct io_kiocb {scalar_t__ result; int /*<<< orphan*/  flags; TYPE_3__* file; struct kiocb rw; struct io_ring_ctx* ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {int f_flags; } ;
struct TYPE_8__ {TYPE_1__* f_op; } ;
struct TYPE_7__ {int /*<<< orphan*/  iopoll; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IOCB_DIRECT ; 
 int IOCB_HIPRI ; 
 int IOCB_NOWAIT ; 
 int IORING_SETUP_IOPOLL ; 
 int O_NONBLOCK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_F_ISREG ; 
 int /*<<< orphan*/  REQ_F_MUST_PUNT ; 
 int /*<<< orphan*/  REQ_F_NOWAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  io_complete_rw ; 
 int /*<<< orphan*/  io_complete_rw_iopoll ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kiocb*,void*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct io_kiocb *req, const struct sqe_submit *s,
		      bool force_nonblock)
{
	const struct io_uring_sqe *sqe = s->sqe;
	struct io_ring_ctx *ctx = req->ctx;
	struct kiocb *kiocb = &req->rw;
	unsigned ioprio;
	int ret;

	if (!req->file)
		return -EBADF;

	if (FUNC1(FUNC2(req->file)->i_mode))
		req->flags |= REQ_F_ISREG;

	/*
	 * If the file doesn't support async, mark it as REQ_F_MUST_PUNT so
	 * we know to async punt it even if it was opened O_NONBLOCK
	 */
	if (force_nonblock && !FUNC5(req->file)) {
		req->flags |= REQ_F_MUST_PUNT;
		return -EAGAIN;
	}

	kiocb->ki_pos = FUNC0(sqe->off);
	kiocb->ki_flags = FUNC6(kiocb->ki_filp);
	kiocb->ki_hint = FUNC8(FUNC3(kiocb->ki_filp));

	ioprio = FUNC0(sqe->ioprio);
	if (ioprio) {
		ret = FUNC7(ioprio);
		if (ret)
			return ret;

		kiocb->ki_ioprio = ioprio;
	} else
		kiocb->ki_ioprio = FUNC4();

	ret = FUNC9(kiocb, FUNC0(sqe->rw_flags));
	if (FUNC10(ret))
		return ret;

	/* don't allow async punt if RWF_NOWAIT was requested */
	if ((kiocb->ki_flags & IOCB_NOWAIT) ||
	    (req->file->f_flags & O_NONBLOCK))
		req->flags |= REQ_F_NOWAIT;

	if (force_nonblock)
		kiocb->ki_flags |= IOCB_NOWAIT;

	if (ctx->flags & IORING_SETUP_IOPOLL) {
		if (!(kiocb->ki_flags & IOCB_DIRECT) ||
		    !kiocb->ki_filp->f_op->iopoll)
			return -EOPNOTSUPP;

		kiocb->ki_flags |= IOCB_HIPRI;
		kiocb->ki_complete = io_complete_rw_iopoll;
		req->result = 0;
	} else {
		if (kiocb->ki_flags & IOCB_HIPRI)
			return -EINVAL;
		kiocb->ki_complete = io_complete_rw;
	}
	return 0;
}