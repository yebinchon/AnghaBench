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
struct zone {int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct page* FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct zone* FUNC3 (struct page*) ; 
 unsigned long pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long,unsigned long) ; 

int FUNC7(unsigned long start_pfn, unsigned long end_pfn,
			bool skip_hwpoisoned_pages)
{
	unsigned long pfn, flags;
	struct page *page;
	struct zone *zone;

	/*
	 * Note: pageblock_nr_pages != MAX_ORDER. Then, chunks of free pages
	 * are not aligned to pageblock_nr_pages.
	 * Then we just check migratetype first.
	 */
	for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
		page = FUNC0(pfn, pageblock_nr_pages);
		if (page && !FUNC2(page))
			break;
	}
	page = FUNC0(start_pfn, end_pfn - start_pfn);
	if ((pfn < end_pfn) || !page)
		return -EBUSY;
	/* Check all pages are free or marked as ISOLATED */
	zone = FUNC3(page);
	FUNC4(&zone->lock, flags);
	pfn = FUNC1(start_pfn, end_pfn,
						skip_hwpoisoned_pages);
	FUNC5(&zone->lock, flags);

	FUNC6(start_pfn, end_pfn, pfn);

	return pfn < end_pfn ? -EBUSY : 0;
}