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
struct perf_event_context {int is_active; scalar_t__ task; int /*<<< orphan*/  nr_events; } ;
struct perf_event {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 unsigned long DETACH_GROUP ; 
 int EVENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*) ; 

__attribute__((used)) static void
FUNC6(struct perf_event *event,
			   struct perf_cpu_context *cpuctx,
			   struct perf_event_context *ctx,
			   void *info)
{
	unsigned long flags = (unsigned long)info;

	if (ctx->is_active & EVENT_TIME) {
		FUNC5(ctx);
		FUNC4(cpuctx);
	}

	FUNC1(event, cpuctx, ctx);
	if (flags & DETACH_GROUP)
		FUNC3(event);
	FUNC2(event, ctx);

	if (!ctx->nr_events && ctx->is_active) {
		ctx->is_active = 0;
		if (ctx->task) {
			FUNC0(cpuctx->task_ctx != ctx);
			cpuctx->task_ctx = NULL;
		}
	}
}