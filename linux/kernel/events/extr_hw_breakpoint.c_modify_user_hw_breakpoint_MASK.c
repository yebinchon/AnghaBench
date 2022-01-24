#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  disabled; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* ctx; } ;
struct TYPE_3__ {scalar_t__ task; } ;

/* Variables and functions */
 scalar_t__ current ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct perf_event*,struct perf_event_attr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 

int FUNC5(struct perf_event *bp, struct perf_event_attr *attr)
{
	int err;

	/*
	 * modify_user_hw_breakpoint can be invoked with IRQs disabled and hence it
	 * will not be possible to raise IPIs that invoke __perf_event_disable.
	 * So call the function directly after making sure we are targeting the
	 * current task.
	 */
	if (FUNC0() && bp->ctx && bp->ctx->task == current)
		FUNC3(bp);
	else
		FUNC2(bp);

	err = FUNC1(bp, attr, false);

	if (!bp->attr.disabled)
		FUNC4(bp);

	return err;
}