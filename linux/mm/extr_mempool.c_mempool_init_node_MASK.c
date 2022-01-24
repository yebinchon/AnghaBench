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
struct TYPE_5__ {int min_nr; int curr_nr; void* pool_data; void* (* alloc ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  elements; int /*<<< orphan*/  wait; int /*<<< orphan*/ * free; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ mempool_t ;
typedef  int /*<<< orphan*/  mempool_free_t ;
typedef  void* (* mempool_alloc_t ) (int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(mempool_t *pool, int min_nr, mempool_alloc_t *alloc_fn,
		      mempool_free_t *free_fn, void *pool_data,
		      gfp_t gfp_mask, int node_id)
{
	FUNC4(&pool->lock);
	pool->min_nr	= min_nr;
	pool->pool_data = pool_data;
	pool->alloc	= *alloc_fn;
	pool->free	= free_fn;
	FUNC1(&pool->wait);

	pool->elements = FUNC2(min_nr, sizeof(void *),
					    gfp_mask, node_id);
	if (!pool->elements)
		return -ENOMEM;

	/*
	 * First pre-allocate the guaranteed number of buffers.
	 */
	while (pool->curr_nr < pool->min_nr) {
		void *element;

		element = pool->alloc(gfp_mask, pool->pool_data);
		if (FUNC6(!element)) {
			FUNC3(pool);
			return -ENOMEM;
		}
		FUNC0(pool, element);
	}

	return 0;
}