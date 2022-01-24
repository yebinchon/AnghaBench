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
 scalar_t__ FUNC1 (struct page*,struct page_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct page_pool*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page_pool*,struct page*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct page_pool *pool,
			  struct page *page, bool allow_direct)
{
	/* This allocator is optimized for the XDP mode that uses
	 * one-frame-per-page, but have fallbacks that act like the
	 * regular page allocator APIs.
	 *
	 * refcnt == 1 means page_pool owns page, and can recycle it.
	 */
	if (FUNC5(FUNC6(page) == 1)) {
		/* Read barrier done in page_ref_count / READ_ONCE */

		if (allow_direct && FUNC4())
			if (FUNC1(page, pool))
				return;

		if (!FUNC2(pool, page)) {
			/* Cache full, fallback to free pages */
			FUNC3(pool, page);
		}
		return;
	}
	/* Fallback/non-XDP mode: API user have elevated refcnt.
	 *
	 * Many drivers split up the page into fragments, and some
	 * want to keep doing this to save memory and do refcnt based
	 * recycling. Support this use case too, to ease drivers
	 * switching between XDP/non-XDP.
	 *
	 * In-case page_pool maintains the DMA mapping, API user must
	 * call page_pool_put_page once.  In this elevated refcnt
	 * case, the DMA is unmapped/released, as driver is likely
	 * doing refcnt based recycle tricks, meaning another process
	 * will be invoking put_page.
	 */
	FUNC0(pool, page);
	FUNC7(page);
}