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
struct io_uring_sqe {int dummy; } ;
struct io_ring_ctx {int /*<<< orphan*/  completion_lock; int /*<<< orphan*/  defer_list; } ;
struct TYPE_2__ {struct io_uring_sqe* sqe; } ;
struct io_kiocb {int /*<<< orphan*/  list; int /*<<< orphan*/  work; TYPE_1__ submit; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIOCBQUEUED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*,struct io_kiocb*) ; 
 int /*<<< orphan*/  io_sq_wq_submit_work ; 
 int /*<<< orphan*/  FUNC2 (struct io_uring_sqe*) ; 
 struct io_uring_sqe* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct io_uring_sqe*,struct io_uring_sqe const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct io_ring_ctx *ctx, struct io_kiocb *req,
			const struct io_uring_sqe *sqe)
{
	struct io_uring_sqe *sqe_copy;

	if (!FUNC1(ctx, req) && FUNC5(&ctx->defer_list))
		return 0;

	sqe_copy = FUNC3(sizeof(*sqe_copy), GFP_KERNEL);
	if (!sqe_copy)
		return -EAGAIN;

	FUNC7(&ctx->completion_lock);
	if (!FUNC1(ctx, req) && FUNC5(&ctx->defer_list)) {
		FUNC8(&ctx->completion_lock);
		FUNC2(sqe_copy);
		return 0;
	}

	FUNC6(sqe_copy, sqe, sizeof(*sqe_copy));
	req->submit.sqe = sqe_copy;

	FUNC0(&req->work, io_sq_wq_submit_work);
	FUNC4(&req->list, &ctx->defer_list);
	FUNC8(&ctx->completion_lock);
	return -EIOCBQUEUED;
}