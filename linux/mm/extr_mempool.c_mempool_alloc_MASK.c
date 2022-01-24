#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  curr_nr; int /*<<< orphan*/  pool_data; void* (* alloc ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mempool_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_IO ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 

void *FUNC13(mempool_t *pool, gfp_t gfp_mask)
{
	void *element;
	unsigned long flags;
	wait_queue_entry_t wait;
	gfp_t gfp_temp;

	FUNC0(gfp_mask & __GFP_ZERO);
	FUNC6(gfp_mask & __GFP_DIRECT_RECLAIM);

	gfp_mask |= __GFP_NOMEMALLOC;	/* don't allocate emergency reserves */
	gfp_mask |= __GFP_NORETRY;	/* don't loop in __alloc_pages */
	gfp_mask |= __GFP_NOWARN;	/* failures are OK */

	gfp_temp = gfp_mask & ~(__GFP_DIRECT_RECLAIM|__GFP_IO);

repeat_alloc:

	element = pool->alloc(gfp_temp, pool->pool_data);
	if (FUNC5(element != NULL))
		return element;

	FUNC10(&pool->lock, flags);
	if (FUNC5(pool->curr_nr)) {
		element = FUNC8(pool);
		FUNC11(&pool->lock, flags);
		/* paired with rmb in mempool_free(), read comment there */
		FUNC9();
		/*
		 * Update the allocation stack trace as this is more useful
		 * for debugging.
		 */
		FUNC4(element);
		return element;
	}

	/*
	 * We use gfp mask w/o direct reclaim or IO for the first round.  If
	 * alloc failed with that and @pool was empty, retry immediately.
	 */
	if (gfp_temp != gfp_mask) {
		FUNC11(&pool->lock, flags);
		gfp_temp = gfp_mask;
		goto repeat_alloc;
	}

	/* We must not sleep if !__GFP_DIRECT_RECLAIM */
	if (!(gfp_mask & __GFP_DIRECT_RECLAIM)) {
		FUNC11(&pool->lock, flags);
		return NULL;
	}

	/* Let's wait for someone else to return an element to @pool */
	FUNC2(&wait);
	FUNC7(&pool->wait, &wait, TASK_UNINTERRUPTIBLE);

	FUNC11(&pool->lock, flags);

	/*
	 * FIXME: this should be io_schedule().  The timeout is there as a
	 * workaround for some DM problems in 2.6.18.
	 */
	FUNC3(5*HZ);

	FUNC1(&pool->wait, &wait);
	goto repeat_alloc;
}