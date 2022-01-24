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
struct worker_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct work_struct {int /*<<< orphan*/  entry; } ;
struct pool_workqueue {struct worker_pool* pool; } ;
struct delayed_work {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 int WORK_STRUCT_DELAYED ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*) ; 
 struct worker_pool* FUNC4 (struct work_struct*) ; 
 struct pool_workqueue* FUNC5 (struct work_struct*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct pool_workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int*) ; 
 struct delayed_work* FUNC18 (struct work_struct*) ; 
 int* FUNC19 (struct work_struct*) ; 
 scalar_t__ FUNC20 (struct work_struct*) ; 

__attribute__((used)) static int FUNC21(struct work_struct *work, bool is_dwork,
			       unsigned long *flags)
{
	struct worker_pool *pool;
	struct pool_workqueue *pwq;

	FUNC9(*flags);

	/* try to steal the timer if it exists */
	if (is_dwork) {
		struct delayed_work *dwork = FUNC18(work);

		/*
		 * dwork->timer is irqsafe.  If del_timer() fails, it's
		 * guaranteed that the timer is not queued anywhere and not
		 * running on the local CPU.
		 */
		if (FUNC6(FUNC2(&dwork->timer)))
			return 1;
	}

	/* try to claim PENDING the normal way */
	if (!FUNC17(WORK_STRUCT_PENDING_BIT, FUNC19(work)))
		return 0;

	FUNC12();
	/*
	 * The queueing is in progress, or it is already queued. Try to
	 * steal it from ->worklist without clearing WORK_STRUCT_PENDING.
	 */
	pool = FUNC4(work);
	if (!pool)
		goto fail;

	FUNC15(&pool->lock);
	/*
	 * work->data is guaranteed to point to pwq only while the work
	 * item is queued on pwq->wq, and both updating work->data to point
	 * to pwq on queueing and to pool on dequeueing are done under
	 * pwq->pool->lock.  This in turn guarantees that, if work->data
	 * points to pwq which is associated with a locked pool, the work
	 * item is currently queued on that pool.
	 */
	pwq = FUNC5(work);
	if (pwq && pwq->pool == pool) {
		FUNC1(work);

		/*
		 * A delayed work item cannot be grabbed directly because
		 * it might have linked NO_COLOR work items which, if left
		 * on the delayed_list, will confuse pwq->nr_active
		 * management later on and cause stall.  Make sure the work
		 * item is activated before grabbing.
		 */
		if (*FUNC19(work) & WORK_STRUCT_DELAYED)
			FUNC10(work);

		FUNC7(&work->entry);
		FUNC11(pwq, FUNC3(work));

		/* work->data points to pwq iff queued, point to pool */
		FUNC14(work, pool->id);

		FUNC16(&pool->lock);
		FUNC13();
		return 1;
	}
	FUNC16(&pool->lock);
fail:
	FUNC13();
	FUNC8(*flags);
	if (FUNC20(work))
		return -ENOENT;
	FUNC0();
	return -EAGAIN;
}