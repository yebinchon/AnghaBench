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
struct workqueue_struct {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  cpu_pwqs; } ;
struct list_head {int dummy; } ;
struct worker_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  watchdog_ts; struct list_head worklist; } ;
struct worker {struct pool_workqueue* current_pwq; } ;
struct work_struct {struct list_head entry; } ;
struct pool_workqueue {size_t work_color; scalar_t__ nr_active; scalar_t__ max_active; struct worker_pool* pool; struct list_head delayed_works; int /*<<< orphan*/ * nr_in_flight; int /*<<< orphan*/  refcnt; struct workqueue_struct* wq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int WORK_CPU_UNBOUND ; 
 unsigned int WORK_STRUCT_DELAYED ; 
 int WQ_UNBOUND ; 
 int __WQ_DRAINING ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 
 struct worker* FUNC6 (struct worker_pool*,struct work_struct*) ; 
 struct worker_pool* FUNC7 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct pool_workqueue*,struct work_struct*,struct list_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct pool_workqueue* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,struct pool_workqueue*,struct work_struct*) ; 
 struct pool_workqueue* FUNC21 (struct workqueue_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 unsigned int FUNC23 (size_t) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(int cpu, struct workqueue_struct *wq,
			 struct work_struct *work)
{
	struct pool_workqueue *pwq;
	struct worker_pool *last_pool;
	struct list_head *worklist;
	unsigned int work_flags;
	unsigned int req_cpu = cpu;

	/*
	 * While a work item is PENDING && off queue, a task trying to
	 * steal the PENDING will busy-loop waiting for it to either get
	 * queued or lose PENDING.  Grabbing PENDING and queueing should
	 * happen with IRQ disabled.
	 */
	FUNC12();

	FUNC5(work);

	/* if draining, only works from the same workqueue are allowed */
	if (FUNC22(wq->flags & __WQ_DRAINING) &&
	    FUNC2(!FUNC9(wq)))
		return;
	FUNC15();
retry:
	if (req_cpu == WORK_CPU_UNBOUND)
		cpu = FUNC24(FUNC14());

	/* pwq which will be used unless @work is executing elsewhere */
	if (!(wq->flags & WQ_UNBOUND))
		pwq = FUNC13(wq->cpu_pwqs, cpu);
	else
		pwq = FUNC21(wq, FUNC4(cpu));

	/*
	 * If @work was previously on a different pool, it might still be
	 * running there, in which case the work needs to be queued on that
	 * pool to guarantee non-reentrancy.
	 */
	last_pool = FUNC7(work);
	if (last_pool && last_pool != pwq->pool) {
		struct worker *worker;

		FUNC17(&last_pool->lock);

		worker = FUNC6(last_pool, work);

		if (worker && worker->current_pwq->wq == wq) {
			pwq = worker->current_pwq;
		} else {
			/* meh... not running there, queue here */
			FUNC18(&last_pool->lock);
			FUNC17(&pwq->pool->lock);
		}
	} else {
		FUNC17(&pwq->pool->lock);
	}

	/*
	 * pwq is determined and locked.  For unbound pools, we could have
	 * raced with pwq release and it could already be dead.  If its
	 * refcnt is zero, repeat pwq selection.  Note that pwqs never die
	 * without another pwq replacing it in the numa_pwq_tbl or while
	 * work items are executing on it, so the retrying is guaranteed to
	 * make forward-progress.
	 */
	if (FUNC22(!pwq->refcnt)) {
		if (wq->flags & WQ_UNBOUND) {
			FUNC18(&pwq->pool->lock);
			FUNC3();
			goto retry;
		}
		/* oops */
		FUNC1(true, "workqueue: per-cpu pwq for %s on cpu%d has 0 refcnt",
			  wq->name, cpu);
	}

	/* pwq determined, queue */
	FUNC20(req_cpu, pwq, work);

	if (FUNC0(!FUNC11(&work->entry)))
		goto out;

	pwq->nr_in_flight[pwq->work_color]++;
	work_flags = FUNC23(pwq->work_color);

	if (FUNC10(pwq->nr_active < pwq->max_active)) {
		FUNC19(work);
		pwq->nr_active++;
		worklist = &pwq->pool->worklist;
		if (FUNC11(worklist))
			pwq->pool->watchdog_ts = jiffies;
	} else {
		work_flags |= WORK_STRUCT_DELAYED;
		worklist = &pwq->delayed_works;
	}

	FUNC8(pwq, work, worklist, work_flags);

out:
	FUNC18(&pwq->pool->lock);
	FUNC16();
}