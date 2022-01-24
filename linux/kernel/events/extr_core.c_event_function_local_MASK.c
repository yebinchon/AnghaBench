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
struct task_struct {int dummy; } ;
struct perf_event_context {scalar_t__ is_active; struct task_struct* task; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context ctx; struct perf_event_context* task_ctx; } ;
typedef  int /*<<< orphan*/  (* event_f ) (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*,void*) ;

/* Variables and functions */
 struct task_struct* FUNC0 (struct task_struct*) ; 
 struct task_struct* TASK_TOMBSTONE ; 
 scalar_t__ FUNC1 (int) ; 
 struct perf_cpu_context* FUNC2 (struct perf_event_context*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_cpu_context*,struct perf_event_context*) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, event_f func, void *data)
{
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC2(ctx);
	struct task_struct *task = FUNC0(ctx->task);
	struct perf_event_context *task_ctx = NULL;

	FUNC3();

	if (task) {
		if (task == TASK_TOMBSTONE)
			return;

		task_ctx = ctx;
	}

	FUNC4(cpuctx, task_ctx);

	task = ctx->task;
	if (task == TASK_TOMBSTONE)
		goto unlock;

	if (task) {
		/*
		 * We must be either inactive or active and the right task,
		 * otherwise we're screwed, since we cannot IPI to somewhere
		 * else.
		 */
		if (ctx->is_active) {
			if (FUNC1(task != current))
				goto unlock;

			if (FUNC1(cpuctx->task_ctx != ctx))
				goto unlock;
		}
	} else {
		FUNC1(&cpuctx->ctx != ctx);
	}

	func(event, cpuctx, ctx, data);
unlock:
	FUNC5(cpuctx, task_ctx);
}