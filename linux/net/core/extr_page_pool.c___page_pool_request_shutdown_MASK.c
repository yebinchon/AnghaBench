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
struct TYPE_2__ {int count; struct page** cache; } ;
struct page_pool {TYPE_1__ alloc; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct page_pool*,struct page*) ; 
 int FUNC2 (struct page_pool*) ; 

bool FUNC3(struct page_pool *pool)
{
	struct page *page;

	/* Empty alloc cache, assume caller made sure this is
	 * no-longer in use, and page_pool_alloc_pages() cannot be
	 * call concurrently.
	 */
	while (pool->alloc.count) {
		page = pool->alloc.cache[--pool->alloc.count];
		FUNC1(pool, page);
	}

	/* No more consumers should exist, but producers could still
	 * be in-flight.
	 */
	FUNC0(pool);

	return FUNC2(pool);
}