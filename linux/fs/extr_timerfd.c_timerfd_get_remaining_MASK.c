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
struct TYPE_2__ {int /*<<< orphan*/  tmr; int /*<<< orphan*/  alarm; } ;
struct timerfd_ctx {TYPE_1__ t; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct timerfd_ctx*) ; 

__attribute__((used)) static ktime_t FUNC3(struct timerfd_ctx *ctx)
{
	ktime_t remaining;

	if (FUNC2(ctx))
		remaining = FUNC0(&ctx->t.alarm);
	else
		remaining = FUNC1(&ctx->t.tmr);

	return remaining < 0 ? 0: remaining;
}