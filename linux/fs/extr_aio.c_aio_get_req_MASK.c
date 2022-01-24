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
struct kioctx {int /*<<< orphan*/  reqs; } ;
struct aio_kiocb {int /*<<< orphan*/ * ki_eventfd; int /*<<< orphan*/  ki_refcnt; int /*<<< orphan*/  ki_list; struct kioctx* ki_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kioctx*) ; 
 int /*<<< orphan*/  kiocb_cachep ; 
 struct aio_kiocb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct aio_kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline struct aio_kiocb *FUNC7(struct kioctx *ctx)
{
	struct aio_kiocb *req;

	req = FUNC2(kiocb_cachep, GFP_KERNEL);
	if (FUNC6(!req))
		return NULL;

	if (FUNC6(!FUNC1(ctx))) {
		FUNC3(kiocb_cachep, req);
		return NULL;
	}

	FUNC4(&ctx->reqs);
	req->ki_ctx = ctx;
	FUNC0(&req->ki_list);
	FUNC5(&req->ki_refcnt, 2);
	req->ki_eventfd = NULL;
	return req;
}