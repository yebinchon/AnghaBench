#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sqe_submit {struct io_uring_sqe* sqe; } ;
struct io_uring_sqe {int dummy; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; int /*<<< orphan*/  user_data; int /*<<< orphan*/  work; int /*<<< orphan*/  submit; } ;
struct async_list {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int REQ_F_FAIL_LINK ; 
 int REQ_F_LINK ; 
 int REQ_F_MUST_PUNT ; 
 int REQ_F_NOWAIT ; 
 int FUNC1 (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct async_list*,struct io_kiocb*) ; 
 struct async_list* FUNC4 (struct io_ring_ctx*,struct io_uring_sqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct io_ring_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC7 (struct io_ring_ctx*,struct io_kiocb*) ; 
 int /*<<< orphan*/  io_sq_wq_submit_work ; 
 struct io_uring_sqe* FUNC8 (struct io_uring_sqe*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sqe_submit*,int) ; 

__attribute__((used)) static int FUNC10(struct io_ring_ctx *ctx, struct io_kiocb *req,
			struct sqe_submit *s)
{
	int ret;

	ret = FUNC1(ctx, req, s, true);

	/*
	 * We async punt it if the file wasn't marked NOWAIT, or if the file
	 * doesn't support non-blocking read/write attempts
	 */
	if (ret == -EAGAIN && (!(req->flags & REQ_F_NOWAIT) ||
	    (req->flags & REQ_F_MUST_PUNT))) {
		struct io_uring_sqe *sqe_copy;

		sqe_copy = FUNC8(s->sqe, sizeof(*sqe_copy), GFP_KERNEL);
		if (sqe_copy) {
			struct async_list *list;

			s->sqe = sqe_copy;
			FUNC9(&req->submit, s, sizeof(*s));
			list = FUNC4(ctx, s->sqe);
			if (!FUNC3(list, req)) {
				if (list)
					FUNC2(&list->cnt);
				FUNC0(&req->work, io_sq_wq_submit_work);
				FUNC7(ctx, req);
			}

			/*
			 * Queued up for async execution, worker will release
			 * submit reference when the iocb is actually submitted.
			 */
			return 0;
		}
	}

	/* drop submission reference */
	FUNC6(req);

	/* and drop final reference, if we failed */
	if (ret) {
		FUNC5(ctx, req->user_data, ret);
		if (req->flags & REQ_F_LINK)
			req->flags |= REQ_F_FAIL_LINK;
		FUNC6(req);
	}

	return ret;
}