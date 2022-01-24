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
struct io_uring_params {int /*<<< orphan*/  flags; } ;
struct io_ring_ctx {int /*<<< orphan*/  timeout_list; int /*<<< orphan*/  defer_list; int /*<<< orphan*/  cancel_list; int /*<<< orphan*/  poll_list; int /*<<< orphan*/  completion_lock; TYPE_1__* pending_async; int /*<<< orphan*/  wait; int /*<<< orphan*/  uring_lock; int /*<<< orphan*/  sqo_thread_started; int /*<<< orphan*/  ctx_done; int /*<<< orphan*/  cq_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  refs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cnt; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PERCPU_REF_ALLOW_REINIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  io_ring_ctx_ref_free ; 
 int /*<<< orphan*/  FUNC5 (struct io_ring_ctx*) ; 
 struct io_ring_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct io_ring_ctx *FUNC10(struct io_uring_params *p)
{
	struct io_ring_ctx *ctx;
	int i;

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	if (FUNC8(&ctx->refs, io_ring_ctx_ref_free,
			    PERCPU_REF_ALLOW_REINIT, GFP_KERNEL)) {
		FUNC5(ctx);
		return NULL;
	}

	ctx->flags = p->flags;
	FUNC4(&ctx->cq_wait);
	FUNC3(&ctx->ctx_done);
	FUNC3(&ctx->sqo_thread_started);
	FUNC7(&ctx->uring_lock);
	FUNC4(&ctx->wait);
	for (i = 0; i < FUNC0(ctx->pending_async); i++) {
		FUNC9(&ctx->pending_async[i].lock);
		FUNC1(&ctx->pending_async[i].list);
		FUNC2(&ctx->pending_async[i].cnt, 0);
	}
	FUNC9(&ctx->completion_lock);
	FUNC1(&ctx->poll_list);
	FUNC1(&ctx->cancel_list);
	FUNC1(&ctx->defer_list);
	FUNC1(&ctx->timeout_list);
	return ctx;
}