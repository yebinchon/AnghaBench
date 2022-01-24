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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tree; } ;
struct perf_event_context {int /*<<< orphan*/  pmu; TYPE_1__ pinned_groups; int /*<<< orphan*/  nr_events; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FLEXIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct perf_cpu_context* FUNC1 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct perf_event_context *ctx,
					struct task_struct *task)
{
	struct perf_cpu_context *cpuctx;

	cpuctx = FUNC1(ctx);
	if (cpuctx->task_ctx == ctx)
		return;

	FUNC3(cpuctx, ctx);
	/*
	 * We must check ctx->nr_events while holding ctx->lock, such
	 * that we serialize against perf_install_in_context().
	 */
	if (!ctx->nr_events)
		goto unlock;

	FUNC6(ctx->pmu);
	/*
	 * We want to keep the following priority order:
	 * cpu pinned (that don't need to move), task pinned,
	 * cpu flexible, task flexible.
	 *
	 * However, if task's ctx is not carrying any pinned
	 * events, no need to flip the cpuctx's events around.
	 */
	if (!FUNC0(&ctx->pinned_groups.tree))
		FUNC2(cpuctx, EVENT_FLEXIBLE);
	FUNC5(cpuctx, ctx, task);
	FUNC7(ctx->pmu);

unlock:
	FUNC4(cpuctx, ctx);
}