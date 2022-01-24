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
struct workqueue_struct {int flags; scalar_t__ saved_max_active; int /*<<< orphan*/  mutex; } ;
struct pool_workqueue {scalar_t__ max_active; scalar_t__ nr_active; TYPE_1__* pool; int /*<<< orphan*/  delayed_works; struct workqueue_struct* wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int WQ_FREEZABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  workqueue_freezing ; 

__attribute__((used)) static void FUNC6(struct pool_workqueue *pwq)
{
	struct workqueue_struct *wq = pwq->wq;
	bool freezable = wq->flags & WQ_FREEZABLE;
	unsigned long flags;

	/* for @wq->saved_max_active */
	FUNC1(&wq->mutex);

	/* fast exit for non-freezable wqs */
	if (!freezable && pwq->max_active == wq->saved_max_active)
		return;

	/* this function can be called during early boot w/ irq disabled */
	FUNC3(&pwq->pool->lock, flags);

	/*
	 * During [un]freezing, the caller is responsible for ensuring that
	 * this function is called at least once after @workqueue_freezing
	 * is updated and visible.
	 */
	if (!freezable || !workqueue_freezing) {
		pwq->max_active = wq->saved_max_active;

		while (!FUNC0(&pwq->delayed_works) &&
		       pwq->nr_active < pwq->max_active)
			FUNC2(pwq);

		/*
		 * Need to kick a worker after thawed or an unbound wq's
		 * max_active is bumped.  It's a slow path.  Do it always.
		 */
		FUNC5(pwq->pool);
	} else {
		pwq->max_active = 0;
	}

	FUNC4(&pwq->pool->lock, flags);
}