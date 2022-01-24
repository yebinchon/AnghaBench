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
struct sqe_submit {TYPE_1__* sqe; } ;
struct io_ring_ctx {int /*<<< orphan*/  completion_lock; int /*<<< orphan*/  defer_list; } ;
struct io_kiocb {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_data; } ;

/* Variables and functions */
 int EIOCBQUEUED ; 
 int /*<<< orphan*/  REQ_F_IO_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (struct io_kiocb*) ; 
 int FUNC1 (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_ring_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_kiocb*) ; 
 int FUNC4 (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ; 
 int FUNC5 (struct io_ring_ctx*,struct io_kiocb*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct io_ring_ctx *ctx, struct io_kiocb *req,
			      struct sqe_submit *s, struct io_kiocb *shadow)
{
	int ret;
	int need_submit = false;

	if (!shadow)
		return FUNC4(ctx, req, s);

	/*
	 * Mark the first IO in link list as DRAIN, let all the following
	 * IOs enter the defer list. all IO needs to be completed before link
	 * list.
	 */
	req->flags |= REQ_F_IO_DRAIN;
	ret = FUNC5(ctx, req, s->sqe);
	if (ret) {
		if (ret != -EIOCBQUEUED) {
			FUNC3(req);
			FUNC0(shadow);
			FUNC2(ctx, s->sqe->user_data, ret);
			return 0;
		}
	} else {
		/*
		 * If ret == 0 means that all IOs in front of link io are
		 * running done. let's queue link head.
		 */
		need_submit = true;
	}

	/* Insert shadow req to defer_list, blocking next IOs */
	FUNC7(&ctx->completion_lock);
	FUNC6(&shadow->list, &ctx->defer_list);
	FUNC8(&ctx->completion_lock);

	if (need_submit)
		return FUNC1(ctx, req, s);

	return 0;
}