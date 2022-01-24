#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct io_uring_sqe {int /*<<< orphan*/  poll_events; scalar_t__ buf_index; scalar_t__ len; scalar_t__ off; scalar_t__ ioprio; scalar_t__ addr; } ;
struct io_ring_ctx {int flags; int /*<<< orphan*/  completion_lock; int /*<<< orphan*/  cancel_list; } ;
struct TYPE_6__ {int _key; int /*<<< orphan*/  _qproc; } ;
struct io_poll_table {int error; TYPE_2__ pt; struct io_kiocb* req; } ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;
struct io_poll_iocb {int events; int done; int canceled; TYPE_3__* head; TYPE_4__ wait; int /*<<< orphan*/  file; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sqe; } ;
struct io_kiocb {int /*<<< orphan*/  list; int /*<<< orphan*/  work; TYPE_1__ submit; struct io_ring_ctx* ctx; struct io_poll_iocb poll; } ;
typedef  int __poll_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORING_SETUP_IOPOLL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct io_ring_ctx*,struct io_kiocb*,int) ; 
 int /*<<< orphan*/  io_poll_complete_work ; 
 int /*<<< orphan*/  io_poll_queue_proc ; 
 int /*<<< orphan*/  io_poll_wake ; 
 int /*<<< orphan*/  FUNC8 (struct io_kiocb*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC19(struct io_kiocb *req, const struct io_uring_sqe *sqe)
{
	struct io_poll_iocb *poll = &req->poll;
	struct io_ring_ctx *ctx = req->ctx;
	struct io_poll_table ipt;
	bool cancel = false;
	__poll_t mask;
	u16 events;

	if (FUNC17(req->ctx->flags & IORING_SETUP_IOPOLL))
		return -EINVAL;
	if (sqe->addr || sqe->ioprio || sqe->off || sqe->len || sqe->buf_index)
		return -EINVAL;
	if (!poll->file)
		return -EBADF;

	req->submit.sqe = NULL;
	FUNC1(&req->work, io_poll_complete_work);
	events = FUNC2(sqe->poll_events);
	poll->events = FUNC4(events) | EPOLLERR | EPOLLHUP;

	poll->head = NULL;
	poll->done = false;
	poll->canceled = false;

	ipt.pt._qproc = io_poll_queue_proc;
	ipt.pt._key = poll->events;
	ipt.req = req;
	ipt.error = -EINVAL; /* same as no support for IOCB_CMD_POLL */

	/* initialized the list so that we can do list_empty checks */
	FUNC0(&poll->wait.entry);
	FUNC5(&poll->wait, io_poll_wake);

	FUNC0(&req->list);

	mask = FUNC18(poll->file, &ipt.pt) & poll->events;

	FUNC14(&ctx->completion_lock);
	if (FUNC9(poll->head)) {
		FUNC13(&poll->head->lock);
		if (FUNC17(FUNC12(&poll->wait.entry))) {
			if (ipt.error)
				cancel = true;
			ipt.error = 0;
			mask = 0;
		}
		if (mask || ipt.error)
			FUNC11(&poll->wait.entry);
		else if (cancel)
			FUNC3(poll->canceled, true);
		else if (!poll->done) /* actually waiting for an event */
			FUNC10(&req->list, &ctx->cancel_list);
		FUNC15(&poll->head->lock);
	}
	if (mask) { /* no async, we'd stolen it */
		ipt.error = 0;
		FUNC7(ctx, req, mask);
	}
	FUNC16(&ctx->completion_lock);

	if (mask) {
		FUNC6(ctx);
		FUNC8(req);
	}
	return ipt.error;
}