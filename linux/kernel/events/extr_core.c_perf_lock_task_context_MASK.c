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
struct task_struct {int /*<<< orphan*/ * perf_event_ctxp; } ;
struct perf_event_context {struct task_struct* task; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 struct task_struct* TASK_TOMBSTONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct perf_event_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct perf_event_context *
FUNC9(struct task_struct *task, int ctxn, unsigned long *flags)
{
	struct perf_event_context *ctx;

retry:
	/*
	 * One of the few rules of preemptible RCU is that one cannot do
	 * rcu_read_unlock() while holding a scheduler (or nested) lock when
	 * part of the read side critical section was irqs-enabled -- see
	 * rcu_read_unlock_special().
	 *
	 * Since ctx->lock nests under rq->lock we must ensure the entire read
	 * side critical section has interrupts disabled.
	 */
	FUNC2(*flags);
	FUNC6();
	ctx = FUNC5(task->perf_event_ctxp[ctxn]);
	if (ctx) {
		/*
		 * If this context is a clone of another, it might
		 * get swapped for another underneath us by
		 * perf_event_task_sched_out, though the
		 * rcu_read_lock() protects us from any context
		 * getting freed.  Lock the context and check if it
		 * got swapped before we could get the lock, and retry
		 * if so.  If we locked the right context, then it
		 * can't get swapped on us any more.
		 */
		FUNC3(&ctx->lock);
		if (ctx != FUNC5(task->perf_event_ctxp[ctxn])) {
			FUNC4(&ctx->lock);
			FUNC7();
			FUNC1(*flags);
			goto retry;
		}

		if (ctx->task == TASK_TOMBSTONE ||
		    !FUNC8(&ctx->refcount)) {
			FUNC4(&ctx->lock);
			ctx = NULL;
		} else {
			FUNC0(ctx->task != task);
		}
	}
	FUNC7();
	if (!ctx)
		FUNC1(*flags);
	return ctx;
}