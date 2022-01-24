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
struct task_struct {struct perf_event_context** perf_event_ctxp; } ;
struct perf_event_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  task_ctx_data; int /*<<< orphan*/  task; int /*<<< orphan*/  parent_ctx; } ;
struct perf_cpu_context {int /*<<< orphan*/  task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct task_struct*) ; 
 struct perf_cpu_context* FUNC2 (struct perf_event_context*) ; 
 scalar_t__ FUNC3 (struct perf_event_context*,struct perf_event_context*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct perf_event_context* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct task_struct *task, int ctxn,
					 struct task_struct *next)
{
	struct perf_event_context *ctx = task->perf_event_ctxp[ctxn];
	struct perf_event_context *next_ctx;
	struct perf_event_context *parent, *next_parent;
	struct perf_cpu_context *cpuctx;
	int do_switch = 1;

	if (FUNC4(!ctx))
		return;

	cpuctx = FUNC2(ctx);
	if (!cpuctx->task_ctx)
		return;

	FUNC10();
	next_ctx = next->perf_event_ctxp[ctxn];
	if (!next_ctx)
		goto unlock;

	parent = FUNC9(ctx->parent_ctx);
	next_parent = FUNC9(next_ctx->parent_ctx);

	/* If neither context have a parent context; they cannot be clones. */
	if (!parent && !next_parent)
		goto unlock;

	if (next_parent == ctx || next_ctx == parent || next_parent == parent) {
		/*
		 * Looks like the two contexts are clones, so we might be
		 * able to optimize the context switch.  We lock both
		 * contexts and check that they are clones under the
		 * lock (including re-checking that neither has been
		 * uncloned in the meantime).  It doesn't matter which
		 * order we take the locks because no other cpu could
		 * be trying to lock both of these tasks.
		 */
		FUNC6(&ctx->lock);
		FUNC7(&next_ctx->lock, SINGLE_DEPTH_NESTING);
		if (FUNC3(ctx, next_ctx)) {
			FUNC1(ctx->task, next);
			FUNC1(next_ctx->task, task);

			FUNC12(ctx->task_ctx_data, next_ctx->task_ctx_data);

			/*
			 * RCU_INIT_POINTER here is safe because we've not
			 * modified the ctx and the above modification of
			 * ctx->task and ctx->task_ctx_data are immaterial
			 * since those values are always verified under
			 * ctx->lock which we're now holding.
			 */
			FUNC0(task->perf_event_ctxp[ctxn], next_ctx);
			FUNC0(next->perf_event_ctxp[ctxn], ctx);

			do_switch = 0;

			FUNC5(ctx, next_ctx);
		}
		FUNC8(&next_ctx->lock);
		FUNC8(&ctx->lock);
	}
unlock:
	FUNC11();

	if (do_switch) {
		FUNC6(&ctx->lock);
		FUNC13(cpuctx, ctx, EVENT_ALL);
		FUNC8(&ctx->lock);
	}
}