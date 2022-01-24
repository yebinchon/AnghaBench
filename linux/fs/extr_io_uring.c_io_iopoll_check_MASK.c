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
struct io_ring_ctx {int /*<<< orphan*/  uring_lock; } ;

/* Variables and functions */
 int FUNC0 (struct io_ring_ctx*,unsigned int*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct io_ring_ctx *ctx, unsigned *nr_events,
			   long min)
{
	int ret;

	/*
	 * We disallow the app entering submit/complete with polling, but we
	 * still need to lock the ring to prevent racing with polled issue
	 * that got punted to a workqueue.
	 */
	FUNC1(&ctx->uring_lock);
	ret = FUNC0(ctx, nr_events, min);
	FUNC2(&ctx->uring_lock);
	return ret;
}