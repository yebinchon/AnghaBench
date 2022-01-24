#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wq_barrier {int dummy; } ;
struct worker_pool {int /*<<< orphan*/  lock; } ;
struct worker {struct pool_workqueue* current_pwq; } ;
struct work_struct {int dummy; } ;
struct pool_workqueue {TYPE_1__* wq; struct worker_pool* pool; } ;
struct TYPE_2__ {int saved_max_active; int /*<<< orphan*/  lockdep_map; scalar_t__ rescuer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct work_struct*) ; 
 struct worker* FUNC1 (struct worker_pool*,struct work_struct*) ; 
 struct worker_pool* FUNC2 (struct work_struct*) ; 
 struct pool_workqueue* FUNC3 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct pool_workqueue*,struct wq_barrier*,struct work_struct*,struct worker*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static bool FUNC13(struct work_struct *work, struct wq_barrier *barr,
			     bool from_cancel)
{
	struct worker *worker = NULL;
	struct worker_pool *pool;
	struct pool_workqueue *pwq;

	FUNC7();

	FUNC8();
	pool = FUNC2(work);
	if (!pool) {
		FUNC9();
		return false;
	}

	FUNC10(&pool->lock);
	/* see the comment in try_to_grab_pending() with the same code */
	pwq = FUNC3(work);
	if (pwq) {
		if (FUNC12(pwq->pool != pool))
			goto already_gone;
	} else {
		worker = FUNC1(pool, work);
		if (!worker)
			goto already_gone;
		pwq = worker->current_pwq;
	}

	FUNC0(pwq->wq, work);

	FUNC4(pwq, barr, work, worker);
	FUNC11(&pool->lock);

	/*
	 * Force a lock recursion deadlock when using flush_work() inside a
	 * single-threaded or rescuer equipped workqueue.
	 *
	 * For single threaded workqueues the deadlock happens when the work
	 * is after the work issuing the flush_work(). For rescuer equipped
	 * workqueues the deadlock happens when the rescuer stalls, blocking
	 * forward progress.
	 */
	if (!from_cancel &&
	    (pwq->wq->saved_max_active == 1 || pwq->wq->rescuer)) {
		FUNC5(&pwq->wq->lockdep_map);
		FUNC6(&pwq->wq->lockdep_map);
	}
	FUNC9();
	return true;
already_gone:
	FUNC11(&pool->lock);
	FUNC9();
	return false;
}