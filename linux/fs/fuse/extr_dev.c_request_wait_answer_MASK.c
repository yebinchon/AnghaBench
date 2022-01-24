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
struct TYPE_3__ {int /*<<< orphan*/  error; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {int /*<<< orphan*/  flags; int /*<<< orphan*/  waitq; TYPE_2__ out; int /*<<< orphan*/  list; } ;
struct fuse_iqueue {int /*<<< orphan*/  lock; } ;
struct fuse_conn {int /*<<< orphan*/  no_interrupt; struct fuse_iqueue iq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FR_FINISHED ; 
 int /*<<< orphan*/  FR_FORCE ; 
 int /*<<< orphan*/  FR_INTERRUPTED ; 
 int /*<<< orphan*/  FR_PENDING ; 
 int /*<<< orphan*/  FR_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_iqueue*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct fuse_conn *fc, struct fuse_req *req)
{
	struct fuse_iqueue *fiq = &fc->iq;
	int err;

	if (!fc->no_interrupt) {
		/* Any signal may interrupt this */
		err = FUNC9(req->waitq,
					FUNC7(FR_FINISHED, &req->flags));
		if (!err)
			return;

		FUNC3(FR_INTERRUPTED, &req->flags);
		/* matches barrier in fuse_dev_do_read() */
		FUNC4();
		if (FUNC7(FR_SENT, &req->flags))
			FUNC2(fiq, req);
	}

	if (!FUNC7(FR_FORCE, &req->flags)) {
		/* Only fatal signals may interrupt this */
		err = FUNC10(req->waitq,
					FUNC7(FR_FINISHED, &req->flags));
		if (!err)
			return;

		FUNC5(&fiq->lock);
		/* Request is not yet in userspace, bail out */
		if (FUNC7(FR_PENDING, &req->flags)) {
			FUNC1(&req->list);
			FUNC6(&fiq->lock);
			FUNC0(req);
			req->out.h.error = -EINTR;
			return;
		}
		FUNC6(&fiq->lock);
	}

	/*
	 * Either request is already in userspace, or it was forced.
	 * Wait it out.
	 */
	FUNC8(req->waitq, FUNC7(FR_FINISHED, &req->flags));
}