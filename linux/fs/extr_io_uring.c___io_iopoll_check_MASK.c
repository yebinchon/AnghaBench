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
struct io_ring_ctx {int /*<<< orphan*/  uring_lock; int /*<<< orphan*/  rings; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct io_ring_ctx*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct io_ring_ctx *ctx, unsigned *nr_events,
			    long min)
{
	int iters = 0, ret = 0;

	do {
		int tmin = 0;

		/*
		 * Don't enter poll loop if we already have events pending.
		 * If we do, we can potentially be spinning for commands that
		 * already triggered a CQE (eg in error).
		 */
		if (FUNC0(ctx->rings))
			break;

		/*
		 * If a submit got punted to a workqueue, we can have the
		 * application entering polling for a command before it gets
		 * issued. That app will hold the uring_lock for the duration
		 * of the poll right here, so we need to take a breather every
		 * now and then to ensure that the issue has a chance to add
		 * the poll to the issued list. Otherwise we can spin here
		 * forever, while the workqueue is stuck trying to acquire the
		 * very same mutex.
		 */
		if (!(++iters & 7)) {
			FUNC3(&ctx->uring_lock);
			FUNC2(&ctx->uring_lock);
		}

		if (*nr_events < min)
			tmin = min - *nr_events;

		ret = FUNC1(ctx, nr_events, tmin);
		if (ret <= 0)
			break;
		ret = 0;
	} while (min && !*nr_events && !FUNC4());

	return ret;
}