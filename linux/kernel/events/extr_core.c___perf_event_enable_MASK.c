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
struct perf_event_context {scalar_t__ task; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; struct perf_event* group_leader; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TIME ; 
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_ERROR ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event,
				struct perf_cpu_context *cpuctx,
				struct perf_event_context *ctx,
				void *info)
{
	struct perf_event *leader = event->group_leader;
	struct perf_event_context *task_ctx;

	if (event->state >= PERF_EVENT_STATE_INACTIVE ||
	    event->state <= PERF_EVENT_STATE_ERROR)
		return;

	if (ctx->is_active)
		FUNC3(ctx, cpuctx, EVENT_TIME);

	FUNC6(event, PERF_EVENT_STATE_INACTIVE);

	if (!ctx->is_active)
		return;

	if (!FUNC4(event)) {
		FUNC2(ctx, cpuctx, EVENT_TIME, current);
		return;
	}

	/*
	 * If the event is in a group and isn't the group leader,
	 * then don't put it on unless the group is on.
	 */
	if (leader != event && leader->state != PERF_EVENT_STATE_ACTIVE) {
		FUNC2(ctx, cpuctx, EVENT_TIME, current);
		return;
	}

	task_ctx = cpuctx->task_ctx;
	if (ctx->task)
		FUNC0(task_ctx != ctx);

	FUNC1(cpuctx, task_ctx, FUNC5(event));
}