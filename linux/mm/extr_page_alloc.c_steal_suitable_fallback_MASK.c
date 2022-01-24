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
struct zone {struct free_area* free_area; int /*<<< orphan*/  flags; } ;
struct page {int dummy; } ;
struct free_area {int dummy; } ;

/* Variables and functions */
 unsigned int ALLOC_KSWAPD ; 
 int MIGRATE_MOVABLE ; 
 int /*<<< orphan*/  ZONE_BOOSTED_WATERMARK ; 
 int /*<<< orphan*/  FUNC0 (struct zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned int,int) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct zone*,struct page*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct free_area*,int) ; 
 scalar_t__ page_group_by_mobility_disabled ; 
 unsigned int FUNC6 (struct page*) ; 
 int pageblock_nr_pages ; 
 unsigned int pageblock_order ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 

__attribute__((used)) static void FUNC9(struct zone *zone, struct page *page,
		unsigned int alloc_flags, int start_type, bool whole_block)
{
	unsigned int current_order = FUNC6(page);
	struct free_area *area;
	int free_pages, movable_pages, alike_pages;
	int old_block_type;

	old_block_type = FUNC2(page);

	/*
	 * This can happen due to races and we want to prevent broken
	 * highatomic accounting.
	 */
	if (FUNC3(old_block_type))
		goto single_page;

	/* Take ownership for orders >= pageblock_order */
	if (current_order >= pageblock_order) {
		FUNC1(page, current_order, start_type);
		goto single_page;
	}

	/*
	 * Boost watermarks to increase reclaim pressure to reduce the
	 * likelihood of future fallbacks. Wake kswapd now as the node
	 * may be balanced overall and kswapd will not wake naturally.
	 */
	FUNC0(zone);
	if (alloc_flags & ALLOC_KSWAPD)
		FUNC7(ZONE_BOOSTED_WATERMARK, &zone->flags);

	/* We are not allowed to try stealing from the whole block */
	if (!whole_block)
		goto single_page;

	free_pages = FUNC4(zone, page, start_type,
						&movable_pages);
	/*
	 * Determine how many pages are compatible with our allocation.
	 * For movable allocation, it's the number of movable pages which
	 * we just obtained. For other types it's a bit more tricky.
	 */
	if (start_type == MIGRATE_MOVABLE) {
		alike_pages = movable_pages;
	} else {
		/*
		 * If we are falling back a RECLAIMABLE or UNMOVABLE allocation
		 * to MOVABLE pageblock, consider all non-movable pages as
		 * compatible. If it's UNMOVABLE falling back to RECLAIMABLE or
		 * vice versa, be conservative since we can't distinguish the
		 * exact migratetype of non-movable pages.
		 */
		if (old_block_type == MIGRATE_MOVABLE)
			alike_pages = pageblock_nr_pages
						- (free_pages + movable_pages);
		else
			alike_pages = 0;
	}

	/* moving whole block can fail due to zone boundary conditions */
	if (!free_pages)
		goto single_page;

	/*
	 * If a sufficient number of pages in the block are either free or of
	 * comparable migratability as our allocation, claim the whole block.
	 */
	if (free_pages + alike_pages >= (1 << (pageblock_order-1)) ||
			page_group_by_mobility_disabled)
		FUNC8(page, start_type);

	return;

single_page:
	area = &zone->free_area[current_order];
	FUNC5(page, area, start_type);
}