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
struct zone {unsigned long* _watermark; struct free_area* free_area; } ;
struct page {int dummy; } ;
struct free_area {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_CMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MIGRATE_MOVABLE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 size_t WMARK_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct zone*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct free_area*) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct zone* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  pageblock_nr_pages ; 
 int pageblock_order ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zone*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct page *page, unsigned int order)
{
	struct free_area *area = &FUNC8(page)->free_area[order];
	unsigned long watermark;
	struct zone *zone;
	int mt;

	FUNC0(!FUNC1(page));

	zone = FUNC8(page);
	mt = FUNC4(page);

	if (!FUNC7(mt)) {
		/*
		 * Obey watermarks as if the page was being allocated. We can
		 * emulate a high-order watermark check with a raised order-0
		 * watermark, because we already know our high-order page
		 * exists.
		 */
		watermark = zone->_watermark[WMARK_MIN] + (1UL << order);
		if (!FUNC10(zone, 0, watermark, 0, ALLOC_CMA))
			return 0;

		FUNC2(zone, -(1UL << order), mt);
	}

	/* Remove page from free list */

	FUNC3(page, area);

	/*
	 * Set the pageblock if the isolated page is at least half of a
	 * pageblock
	 */
	if (order >= pageblock_order - 1) {
		struct page *endpage = page + (1 << order) - 1;
		for (; page < endpage; page += pageblock_nr_pages) {
			int mt = FUNC4(page);
			if (!FUNC7(mt) && !FUNC5(mt)
			    && !FUNC6(mt))
				FUNC9(page,
							  MIGRATE_MOVABLE);
		}
	}


	return 1UL << order;
}