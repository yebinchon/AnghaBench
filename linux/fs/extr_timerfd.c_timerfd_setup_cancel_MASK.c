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
struct timerfd_ctx {scalar_t__ clockid; int might_cancel; int /*<<< orphan*/  cancel_lock; int /*<<< orphan*/  clist; } ;

/* Variables and functions */
 scalar_t__ CLOCK_REALTIME ; 
 scalar_t__ CLOCK_REALTIME_ALARM ; 
 int TFD_TIMER_ABSTIME ; 
 int TFD_TIMER_CANCEL_ON_SET ; 
 int /*<<< orphan*/  FUNC0 (struct timerfd_ctx*) ; 
 int /*<<< orphan*/  cancel_list ; 
 int /*<<< orphan*/  cancel_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timerfd_ctx *ctx, int flags)
{
	FUNC2(&ctx->cancel_lock);
	if ((ctx->clockid == CLOCK_REALTIME ||
	     ctx->clockid == CLOCK_REALTIME_ALARM) &&
	    (flags & TFD_TIMER_ABSTIME) && (flags & TFD_TIMER_CANCEL_ON_SET)) {
		if (!ctx->might_cancel) {
			ctx->might_cancel = true;
			FUNC2(&cancel_lock);
			FUNC1(&ctx->clist, &cancel_list);
			FUNC3(&cancel_lock);
		}
	} else {
		FUNC0(ctx);
	}
	FUNC3(&ctx->cancel_lock);
}