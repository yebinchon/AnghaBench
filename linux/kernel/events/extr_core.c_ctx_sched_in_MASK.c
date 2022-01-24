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
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {int dummy; } ;
struct perf_event_context {int is_active; int /*<<< orphan*/  timestamp; scalar_t__ task; int /*<<< orphan*/  nr_events; int /*<<< orphan*/  lock; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;
typedef  enum event_type_t { ____Placeholder_event_type_t } event_type_t ;

/* Variables and functions */
 int EVENT_FLEXIBLE ; 
 int EVENT_PINNED ; 
 int EVENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_context*,struct perf_cpu_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_context*,struct perf_cpu_context*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct perf_event_context *ctx,
	     struct perf_cpu_context *cpuctx,
	     enum event_type_t event_type,
	     struct task_struct *task)
{
	int is_active = ctx->is_active;
	u64 now;

	FUNC4(&ctx->lock);

	if (FUNC3(!ctx->nr_events))
		return;

	ctx->is_active |= (event_type | EVENT_TIME);
	if (ctx->task) {
		if (!is_active)
			cpuctx->task_ctx = ctx;
		else
			FUNC0(cpuctx->task_ctx != ctx);
	}

	is_active ^= ctx->is_active; /* changed bits */

	if (is_active & EVENT_TIME) {
		/* start ctx time */
		now = FUNC6();
		ctx->timestamp = now;
		FUNC5(task, ctx);
	}

	/*
	 * First go through the list and put on any pinned groups
	 * in order to give them the best chance of going on.
	 */
	if (is_active & EVENT_PINNED)
		FUNC2(ctx, cpuctx);

	/* Then walk through the lower prio flexible groups */
	if (is_active & EVENT_FLEXIBLE)
		FUNC1(ctx, cpuctx);
}