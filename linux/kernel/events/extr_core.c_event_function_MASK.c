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
struct perf_event_context {scalar_t__ task; int /*<<< orphan*/  is_active; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context ctx; struct perf_event_context* task_ctx; } ;
struct event_function_struct {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ;struct perf_event* event; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct perf_cpu_context* FUNC1 (struct perf_event_context*) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *info)
{
	struct event_function_struct *efs = info;
	struct perf_event *event = efs->event;
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC1(ctx);
	struct perf_event_context *task_ctx = cpuctx->task_ctx;
	int ret = 0;

	FUNC2();

	FUNC3(cpuctx, task_ctx);
	/*
	 * Since we do the IPI call without holding ctx->lock things can have
	 * changed, double check we hit the task we set out to hit.
	 */
	if (ctx->task) {
		if (ctx->task != current) {
			ret = -ESRCH;
			goto unlock;
		}

		/*
		 * We only use event_function_call() on established contexts,
		 * and event_function() is only ever called when active (or
		 * rather, we'll have bailed in task_function_call() or the
		 * above ctx->task != current test), therefore we must have
		 * ctx->is_active here.
		 */
		FUNC0(!ctx->is_active);
		/*
		 * And since we have ctx->is_active, cpuctx->task_ctx must
		 * match.
		 */
		FUNC0(task_ctx != ctx);
	} else {
		FUNC0(&cpuctx->ctx != ctx);
	}

	efs->func(event, cpuctx, ctx, efs->data);
unlock:
	FUNC4(cpuctx, task_ctx);

	return ret;
}