#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int min_nr; int curr_nr; void** elements; int /*<<< orphan*/  lock; int /*<<< orphan*/  pool_data; int /*<<< orphan*/  (* free ) (void*,int /*<<< orphan*/ ) ;void* (* alloc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(mempool_t *pool, int new_min_nr)
{
	void *element;
	void **new_elements;
	unsigned long flags;

	FUNC0(new_min_nr <= 0);
	FUNC5();

	FUNC7(&pool->lock, flags);
	if (new_min_nr <= pool->min_nr) {
		while (new_min_nr < pool->curr_nr) {
			element = FUNC6(pool);
			FUNC8(&pool->lock, flags);
			pool->free(element, pool->pool_data);
			FUNC7(&pool->lock, flags);
		}
		pool->min_nr = new_min_nr;
		goto out_unlock;
	}
	FUNC8(&pool->lock, flags);

	/* Grow the pool */
	new_elements = FUNC3(new_min_nr, sizeof(*new_elements),
				     GFP_KERNEL);
	if (!new_elements)
		return -ENOMEM;

	FUNC7(&pool->lock, flags);
	if (FUNC12(new_min_nr <= pool->min_nr)) {
		/* Raced, other resize will do our work */
		FUNC8(&pool->lock, flags);
		FUNC2(new_elements);
		goto out;
	}
	FUNC4(new_elements, pool->elements,
			pool->curr_nr * sizeof(*new_elements));
	FUNC2(pool->elements);
	pool->elements = new_elements;
	pool->min_nr = new_min_nr;

	while (pool->curr_nr < pool->min_nr) {
		FUNC8(&pool->lock, flags);
		element = pool->alloc(GFP_KERNEL, pool->pool_data);
		if (!element)
			goto out;
		FUNC7(&pool->lock, flags);
		if (pool->curr_nr < pool->min_nr) {
			FUNC1(pool, element);
		} else {
			FUNC8(&pool->lock, flags);
			pool->free(element, pool->pool_data);	/* Raced */
			goto out;
		}
	}
out_unlock:
	FUNC8(&pool->lock, flags);
out:
	return 0;
}