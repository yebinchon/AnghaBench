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
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; } ;

/* Variables and functions */
 int REQ_F_IO_DRAINED ; 
 int REQ_F_SHADOW_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct io_kiocb*) ; 
 struct io_kiocb* FUNC2 (struct io_ring_ctx*) ; 
 struct io_kiocb* FUNC3 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC5 (struct io_ring_ctx*,struct io_kiocb*) ; 

__attribute__((used)) static void FUNC6(struct io_ring_ctx *ctx)
{
	struct io_kiocb *req;

	while ((req = FUNC3(ctx)) != NULL)
		FUNC4(req);

	FUNC0(ctx);

	while ((req = FUNC2(ctx)) != NULL) {
		if (req->flags & REQ_F_SHADOW_DRAIN) {
			/* Just for drain, free it. */
			FUNC1(req);
			continue;
		}
		req->flags |= REQ_F_IO_DRAINED;
		FUNC5(ctx, req);
	}
}