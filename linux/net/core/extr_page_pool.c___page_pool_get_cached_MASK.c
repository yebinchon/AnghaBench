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
struct ptr_ring {int /*<<< orphan*/  consumer_lock; } ;
struct TYPE_2__ {size_t count; struct page** cache; } ;
struct page_pool {TYPE_1__ alloc; struct ptr_ring ring; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PP_ALLOC_CACHE_REFILL ; 
 struct page* FUNC0 (struct ptr_ring*) ; 
 size_t FUNC1 (struct ptr_ring*,struct page**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ptr_ring*) ; 
 size_t FUNC3 () ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC7(struct page_pool *pool)
{
	struct ptr_ring *r = &pool->ring;
	bool refill = false;
	struct page *page;

	/* Test for safe-context, caller should provide this guarantee */
	if (FUNC4(FUNC3())) {
		if (FUNC4(pool->alloc.count)) {
			/* Fast-path */
			page = pool->alloc.cache[--pool->alloc.count];
			return page;
		}
		refill = true;
	}

	/* Quicker fallback, avoid locks when ring is empty */
	if (FUNC2(r))
		return NULL;

	/* Slow-path: Get page from locked ring queue,
	 * refill alloc array if requested.
	 */
	FUNC5(&r->consumer_lock);
	page = FUNC0(r);
	if (refill)
		pool->alloc.count = FUNC1(r,
							pool->alloc.cache,
							PP_ALLOC_CACHE_REFILL);
	FUNC6(&r->consumer_lock);
	return page;
}