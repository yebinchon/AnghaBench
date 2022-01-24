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
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ is_active; struct task_struct* task; int /*<<< orphan*/  mutex; } ;
struct perf_event {int /*<<< orphan*/  cpu; int /*<<< orphan*/  parent; struct perf_event_context* ctx; } ;
struct event_function_struct {void* data; int /*<<< orphan*/  (* func ) (struct perf_event*,int /*<<< orphan*/ *,struct perf_event_context*,void*) ;struct perf_event* event; } ;
typedef  int /*<<< orphan*/  (* event_f ) (struct perf_event*,int /*<<< orphan*/ *,struct perf_event_context*,void*) ;

/* Variables and functions */
 struct task_struct* FUNC0 (struct task_struct*) ; 
 struct task_struct* TASK_TOMBSTONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event_function_struct*) ; 
 int /*<<< orphan*/  event_function ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,struct event_function_struct*) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, event_f func, void *data)
{
	struct perf_event_context *ctx = event->ctx;
	struct task_struct *task = FUNC0(ctx->task); /* verified in event_function */
	struct event_function_struct efs = {
		.event = event,
		.func = func,
		.data = data,
	};

	if (!event->parent) {
		/*
		 * If this is a !child event, we must hold ctx::mutex to
		 * stabilize the the event->ctx relation. See
		 * perf_event_ctx_lock().
		 */
		FUNC2(&ctx->mutex);
	}

	if (!task) {
		FUNC1(event->cpu, event_function, &efs);
		return;
	}

	if (task == TASK_TOMBSTONE)
		return;

again:
	if (!FUNC5(task, event_function, &efs))
		return;

	FUNC3(&ctx->lock);
	/*
	 * Reload the task pointer, it might have been changed by
	 * a concurrent perf_event_context_sched_out().
	 */
	task = ctx->task;
	if (task == TASK_TOMBSTONE) {
		FUNC4(&ctx->lock);
		return;
	}
	if (ctx->is_active) {
		FUNC4(&ctx->lock);
		goto again;
	}
	func(event, NULL, ctx, data);
	FUNC4(&ctx->lock);
}