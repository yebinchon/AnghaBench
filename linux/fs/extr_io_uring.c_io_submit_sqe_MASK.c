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
struct io_uring_sqe {int flags; int /*<<< orphan*/  user_data; } ;
struct io_submit_state {int dummy; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int /*<<< orphan*/  link_list; int /*<<< orphan*/  submit; int /*<<< orphan*/  flags; int /*<<< orphan*/  list; int /*<<< orphan*/  user_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IOSQE_IO_LINK ; 
 int /*<<< orphan*/  REQ_F_LINK ; 
 int SQE_VALID_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct io_kiocb*) ; 
 struct io_kiocb* FUNC3 (struct io_ring_ctx*,struct io_submit_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ; 
 int FUNC5 (struct io_ring_ctx*,struct sqe_submit*,struct io_submit_state*,struct io_kiocb*) ; 
 struct io_uring_sqe* FUNC6 (struct io_uring_sqe*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sqe_submit*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct io_ring_ctx *ctx, struct sqe_submit *s,
			  struct io_submit_state *state, struct io_kiocb **link)
{
	struct io_uring_sqe *sqe_copy;
	struct io_kiocb *req;
	int ret;

	/* enforce forwards compatibility on users */
	if (FUNC9(s->sqe->flags & ~SQE_VALID_FLAGS)) {
		ret = -EINVAL;
		goto err;
	}

	req = FUNC3(ctx, state);
	if (FUNC9(!req)) {
		ret = -EAGAIN;
		goto err;
	}

	ret = FUNC5(ctx, s, state, req);
	if (FUNC9(ret)) {
err_req:
		FUNC2(req);
err:
		FUNC1(ctx, s->sqe->user_data, ret);
		return;
	}

	req->user_data = s->sqe->user_data;

	/*
	 * If we already have a head request, queue this one for async
	 * submittal once the head completes. If we don't have a head but
	 * IOSQE_IO_LINK is set in the sqe, start a new head. This one will be
	 * submitted sync once the chain is complete. If none of those
	 * conditions are true (normal request), then just queue it.
	 */
	if (*link) {
		struct io_kiocb *prev = *link;

		sqe_copy = FUNC6(s->sqe, sizeof(*sqe_copy), GFP_KERNEL);
		if (!sqe_copy) {
			ret = -EAGAIN;
			goto err_req;
		}

		s->sqe = sqe_copy;
		FUNC8(&req->submit, s, sizeof(*s));
		FUNC7(&req->list, &prev->link_list);
	} else if (s->sqe->flags & IOSQE_IO_LINK) {
		req->flags |= REQ_F_LINK;

		FUNC8(&req->submit, s, sizeof(*s));
		FUNC0(&req->link_list);
		*link = req;
	} else {
		FUNC4(ctx, req, s);
	}
}