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
struct task_struct {int flags; int /*<<< orphan*/  perf_event_mutex; scalar_t__* perf_event_ctxp; } ;
struct pmu {int task_ctx_nr; int /*<<< orphan*/  task_ctx_size; int /*<<< orphan*/  pmu_cpu_context; } ;
struct perf_event_context {int /*<<< orphan*/  pin_count; void* task_ctx_data; int /*<<< orphan*/  lock; } ;
struct perf_event {int cpu; int attach_state; } ;
struct perf_cpu_context {struct perf_event_context ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct perf_event_context* FUNC0 (int) ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PERF_ATTACH_TASK_DATA ; 
 int PF_EXITING ; 
 struct perf_event_context* FUNC1 (struct pmu*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct perf_cpu_context* FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct perf_event_context* FUNC9 (struct task_struct*,int,unsigned long*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct perf_event_context*) ; 
 struct perf_event_context* FUNC14 (struct perf_event_context*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static struct perf_event_context *
FUNC16(struct pmu *pmu, struct task_struct *task,
		struct perf_event *event)
{
	struct perf_event_context *ctx, *clone_ctx = NULL;
	struct perf_cpu_context *cpuctx;
	void *task_ctx_data = NULL;
	unsigned long flags;
	int ctxn, err;
	int cpu = event->cpu;

	if (!task) {
		/* Must be root to operate on a CPU event: */
		if (FUNC10() && !FUNC2(CAP_SYS_ADMIN))
			return FUNC0(-EACCES);

		cpuctx = FUNC8(pmu->pmu_cpu_context, cpu);
		ctx = &cpuctx->ctx;
		FUNC3(ctx);
		++ctx->pin_count;

		return ctx;
	}

	err = -EINVAL;
	ctxn = pmu->task_ctx_nr;
	if (ctxn < 0)
		goto errout;

	if (event->attach_state & PERF_ATTACH_TASK_DATA) {
		task_ctx_data = FUNC5(pmu->task_ctx_size, GFP_KERNEL);
		if (!task_ctx_data) {
			err = -ENOMEM;
			goto errout;
		}
	}

retry:
	ctx = FUNC9(task, ctxn, &flags);
	if (ctx) {
		clone_ctx = FUNC14(ctx);
		++ctx->pin_count;

		if (task_ctx_data && !ctx->task_ctx_data) {
			ctx->task_ctx_data = task_ctx_data;
			task_ctx_data = NULL;
		}
		FUNC12(&ctx->lock, flags);

		if (clone_ctx)
			FUNC11(clone_ctx);
	} else {
		ctx = FUNC1(pmu, task);
		err = -ENOMEM;
		if (!ctx)
			goto errout;

		if (task_ctx_data) {
			ctx->task_ctx_data = task_ctx_data;
			task_ctx_data = NULL;
		}

		err = 0;
		FUNC6(&task->perf_event_mutex);
		/*
		 * If it has already passed perf_event_exit_task().
		 * we must see PF_EXITING, it takes this mutex too.
		 */
		if (task->flags & PF_EXITING)
			err = -ESRCH;
		else if (task->perf_event_ctxp[ctxn])
			err = -EAGAIN;
		else {
			FUNC3(ctx);
			++ctx->pin_count;
			FUNC13(task->perf_event_ctxp[ctxn], ctx);
		}
		FUNC7(&task->perf_event_mutex);

		if (FUNC15(err)) {
			FUNC11(ctx);

			if (err == -EAGAIN)
				goto retry;
			goto errout;
		}
	}

	FUNC4(task_ctx_data);
	return ctx;

errout:
	FUNC4(task_ctx_data);
	return FUNC0(err);
}