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
struct io_ring_ctx {int flags; int /*<<< orphan*/  uring_lock; int /*<<< orphan*/  poll_list; } ;

/* Variables and functions */
 int IORING_SETUP_IOPOLL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct io_ring_ctx *ctx)
{
	if (!(ctx->flags & IORING_SETUP_IOPOLL))
		return;

	FUNC3(&ctx->uring_lock);
	while (!FUNC2(&ctx->poll_list)) {
		unsigned int nr_events = 0;

		FUNC1(ctx, &nr_events, 1);

		/*
		 * Ensure we allow local-to-the-cpu processing to take place,
		 * in this case we need to ensure that we reap all events.
		 */
		FUNC0();
	}
	FUNC4(&ctx->uring_lock);
}