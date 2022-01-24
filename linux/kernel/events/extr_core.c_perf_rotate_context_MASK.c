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
struct perf_event_context {int rotate_necessary; int /*<<< orphan*/  pmu; } ;
struct perf_event {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; struct perf_event_context ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FLEXIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 struct perf_event* FUNC1 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event_context*,struct perf_event*) ; 

__attribute__((used)) static bool FUNC9(struct perf_cpu_context *cpuctx)
{
	struct perf_event *cpu_event = NULL, *task_event = NULL;
	struct perf_event_context *task_ctx = NULL;
	int cpu_rotate, task_rotate;

	/*
	 * Since we run this from IRQ context, nobody can install new
	 * events, thus the event count values are stable.
	 */

	cpu_rotate = cpuctx->ctx.rotate_necessary;
	task_ctx = cpuctx->task_ctx;
	task_rotate = task_ctx ? task_ctx->rotate_necessary : 0;

	if (!(cpu_rotate || task_rotate))
		return false;

	FUNC3(cpuctx, cpuctx->task_ctx);
	FUNC6(cpuctx->ctx.pmu);

	if (task_rotate)
		task_event = FUNC1(task_ctx);
	if (cpu_rotate)
		cpu_event = FUNC1(&cpuctx->ctx);

	/*
	 * As per the order given at ctx_resched() first 'pop' task flexible
	 * and then, if needed CPU flexible.
	 */
	if (task_event || (task_ctx && cpu_event))
		FUNC2(task_ctx, cpuctx, EVENT_FLEXIBLE);
	if (cpu_event)
		FUNC0(cpuctx, EVENT_FLEXIBLE);

	if (task_event)
		FUNC8(task_ctx, task_event);
	if (cpu_event)
		FUNC8(&cpuctx->ctx, cpu_event);

	FUNC5(cpuctx, task_ctx, current);

	FUNC7(cpuctx->ctx.pmu);
	FUNC4(cpuctx, cpuctx->task_ctx);

	return true;
}