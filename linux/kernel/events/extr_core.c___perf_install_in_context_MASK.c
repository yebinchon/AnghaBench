#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct perf_event_context {scalar_t__ task; int /*<<< orphan*/  lock; } ;
struct perf_event {TYPE_4__* cgrp; struct perf_event_context* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; TYPE_1__ ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  cgroup; } ;
struct perf_cgroup {TYPE_2__ css; } ;
struct TYPE_7__ {int /*<<< orphan*/  cgroup; } ;
struct TYPE_8__ {TYPE_3__ css; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  EVENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct perf_cpu_context* FUNC1 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 scalar_t__ FUNC7 (struct perf_event*) ; 
 struct perf_cgroup* FUNC8 (scalar_t__,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static int  FUNC12(void *info)
{
	struct perf_event *event = info;
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC1(ctx);
	struct perf_event_context *task_ctx = cpuctx->task_ctx;
	bool reprogram = true;
	int ret = 0;

	FUNC10(&cpuctx->ctx.lock);
	if (ctx->task) {
		FUNC10(&ctx->lock);
		task_ctx = ctx;

		reprogram = (ctx->task == current);

		/*
		 * If the task is running, it must be running on this CPU,
		 * otherwise we cannot reprogram things.
		 *
		 * If its not running, we don't care, ctx->lock will
		 * serialize against it becoming runnable.
		 */
		if (FUNC11(ctx->task) && !reprogram) {
			ret = -ESRCH;
			goto unlock;
		}

		FUNC0(reprogram && cpuctx->task_ctx && cpuctx->task_ctx != ctx);
	} else if (task_ctx) {
		FUNC10(&task_ctx->lock);
	}

#ifdef CONFIG_CGROUP_PERF
	if (is_cgroup_event(event)) {
		/*
		 * If the current cgroup doesn't match the event's
		 * cgroup, we should not try to schedule it.
		 */
		struct perf_cgroup *cgrp = perf_cgroup_from_task(current, ctx);
		reprogram = cgroup_is_descendant(cgrp->css.cgroup,
					event->cgrp->css.cgroup);
	}
#endif

	if (reprogram) {
		FUNC5(ctx, cpuctx, EVENT_TIME);
		FUNC2(event, ctx);
		FUNC4(cpuctx, task_ctx, FUNC6(event));
	} else {
		FUNC2(event, ctx);
	}

unlock:
	FUNC9(cpuctx, task_ctx);

	return ret;
}