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
struct page_pool {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_pool*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct page_pool *pool, struct page *page)
{
	FUNC0(pool, page);

	FUNC1(page);
	/* An optimization would be to call __free_pages(page, pool->p.order)
	 * knowing page is not part of page-cache (thus avoiding a
	 * __page_cache_release() call).
	 */
}