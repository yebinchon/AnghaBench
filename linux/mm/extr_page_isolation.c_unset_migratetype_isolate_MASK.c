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
struct zone {int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_isolate_pageblock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  __GFP_MOVABLE ; 
 unsigned long FUNC1 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned long FUNC6 (struct zone*,struct page*,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (struct page*) ; 
 unsigned long FUNC8 (struct page*) ; 
 struct zone* FUNC9 (struct page*) ; 
 unsigned int pageblock_order ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct page *page, unsigned migratetype)
{
	struct zone *zone;
	unsigned long flags, nr_pages;
	bool isolated_page = false;
	unsigned int order;
	unsigned long pfn, buddy_pfn;
	struct page *buddy;

	zone = FUNC9(page);
	FUNC13(&zone->lock, flags);
	if (!FUNC5(page))
		goto out;

	/*
	 * Because freepage with more than pageblock_order on isolated
	 * pageblock is restricted to merge due to freepage counting problem,
	 * it is possible that there is free buddy page.
	 * move_freepages_block() doesn't care of merge so we need other
	 * approach in order to merge them. Isolation and free will make
	 * these pages to be merged.
	 */
	if (FUNC0(page)) {
		order = FUNC7(page);
		if (order >= pageblock_order) {
			pfn = FUNC8(page);
			buddy_pfn = FUNC1(pfn, order);
			buddy = page + (buddy_pfn - pfn);

			if (FUNC10(buddy_pfn) &&
			    !FUNC5(buddy)) {
				FUNC3(page, order);
				isolated_page = true;
			}
		}
	}

	/*
	 * If we isolate freepage with more than pageblock_order, there
	 * should be no freepage in the range, so we could avoid costly
	 * pageblock scanning for freepage moving.
	 */
	if (!isolated_page) {
		nr_pages = FUNC6(zone, page, migratetype, NULL);
		FUNC4(zone, nr_pages, migratetype);
	}
	FUNC12(page, migratetype);
	zone->nr_isolate_pageblock--;
out:
	FUNC14(&zone->lock, flags);
	if (isolated_page) {
		FUNC11(page, order, __GFP_MOVABLE);
		FUNC2(page, order);
	}
}