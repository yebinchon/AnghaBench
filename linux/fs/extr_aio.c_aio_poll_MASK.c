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
typedef  scalar_t__ u16 ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;
struct poll_iocb {int events; int done; int cancelled; TYPE_3__* head; TYPE_4__ wait; int /*<<< orphan*/  file; int /*<<< orphan*/  work; } ;
struct kioctx {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  active_reqs; } ;
struct iocb {scalar_t__ aio_buf; scalar_t__ aio_rw_flags; scalar_t__ aio_nbytes; scalar_t__ aio_offset; } ;
struct TYPE_6__ {int _key; int /*<<< orphan*/  _qproc; } ;
struct aio_poll_table {int error; TYPE_2__ pt; struct aio_kiocb* iocb; } ;
struct TYPE_5__ {int /*<<< orphan*/  res; } ;
struct aio_kiocb {TYPE_1__ ki_res; int /*<<< orphan*/  ki_cancel; int /*<<< orphan*/  ki_list; struct poll_iocb poll; struct kioctx* ki_ctx; } ;
typedef  int __poll_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  aio_poll_cancel ; 
 int /*<<< orphan*/  aio_poll_complete_work ; 
 int /*<<< orphan*/  aio_poll_queue_proc ; 
 int /*<<< orphan*/  aio_poll_wake ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_kiocb*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC17(struct aio_kiocb *aiocb, const struct iocb *iocb)
{
	struct kioctx *ctx = aiocb->ki_ctx;
	struct poll_iocb *req = &aiocb->poll;
	struct aio_poll_table apt;
	bool cancel = false;
	__poll_t mask;

	/* reject any unknown events outside the normal event mask. */
	if ((u16)iocb->aio_buf != iocb->aio_buf)
		return -EINVAL;
	/* reject fields that are not defined for poll */
	if (iocb->aio_offset || iocb->aio_nbytes || iocb->aio_rw_flags)
		return -EINVAL;

	FUNC1(&req->work, aio_poll_complete_work);
	req->events = FUNC3(iocb->aio_buf) | EPOLLERR | EPOLLHUP;

	req->head = NULL;
	req->done = false;
	req->cancelled = false;

	apt.pt._qproc = aio_poll_queue_proc;
	apt.pt._key = req->events;
	apt.iocb = aiocb;
	apt.error = -EINVAL; /* same as no support for IOCB_CMD_POLL */

	/* initialized the list so that we can do list_empty checks */
	FUNC0(&req->wait.entry);
	FUNC4(&req->wait, aio_poll_wake);

	mask = FUNC16(req->file, &apt.pt) & req->events;
	FUNC12(&ctx->ctx_lock);
	if (FUNC6(req->head)) {
		FUNC11(&req->head->lock);
		if (FUNC15(FUNC9(&req->wait.entry))) {
			if (apt.error)
				cancel = true;
			apt.error = 0;
			mask = 0;
		}
		if (mask || apt.error) {
			FUNC8(&req->wait.entry);
		} else if (cancel) {
			FUNC2(req->cancelled, true);
		} else if (!req->done) { /* actually waiting for an event */
			FUNC7(&aiocb->ki_list, &ctx->active_reqs);
			aiocb->ki_cancel = aio_poll_cancel;
		}
		FUNC13(&req->head->lock);
	}
	if (mask) { /* no async, we'd stolen it */
		aiocb->ki_res.res = FUNC10(mask);
		apt.error = 0;
	}
	FUNC14(&ctx->ctx_lock);
	if (mask)
		FUNC5(aiocb);
	return apt.error;
}