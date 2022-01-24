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
struct zone {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 unsigned int ALLOC_HARDER ; 
 int /*<<< orphan*/  MIGRATE_HIGHATOMIC ; 
 int /*<<< orphan*/  PGALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZONE_BOOSTED_WATERMARK ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct zone*,unsigned int,int,unsigned int) ; 
 struct page* FUNC5 (struct zone*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct zone*,struct page*) ; 
 scalar_t__ FUNC7 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct page* FUNC13 (struct zone*,struct zone*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct zone*) ; 
 int /*<<< orphan*/  FUNC20 (struct zone*,struct zone*) ; 

__attribute__((used)) static inline
struct page *FUNC21(struct zone *preferred_zone,
			struct zone *zone, unsigned int order,
			gfp_t gfp_flags, unsigned int alloc_flags,
			int migratetype)
{
	unsigned long flags;
	struct page *page;

	if (FUNC10(order == 0)) {
		page = FUNC13(preferred_zone, zone, gfp_flags,
					migratetype, alloc_flags);
		goto out;
	}

	/*
	 * We most definitely don't want callers attempting to
	 * allocate greater than order-1 page units with __GFP_NOFAIL.
	 */
	FUNC1((gfp_flags & __GFP_NOFAIL) && (order > 1));
	FUNC14(&zone->lock, flags);

	do {
		page = NULL;
		if (alloc_flags & ALLOC_HARDER) {
			page = FUNC5(zone, order, MIGRATE_HIGHATOMIC);
			if (page)
				FUNC17(page, order, migratetype);
		}
		if (!page)
			page = FUNC4(zone, order, migratetype, alloc_flags);
	} while (page && FUNC7(page, order));
	FUNC15(&zone->lock);
	if (!page)
		goto failed;
	FUNC3(zone, -(1 << order),
				  FUNC9(page));

	FUNC2(PGALLOC, FUNC12(page), 1 << order);
	FUNC20(preferred_zone, zone);
	FUNC11(flags);

out:
	/* Separate test+clear to avoid unnecessary atomics */
	if (FUNC16(ZONE_BOOSTED_WATERMARK, &zone->flags)) {
		FUNC8(ZONE_BOOSTED_WATERMARK, &zone->flags);
		FUNC18(zone, 0, 0, FUNC19(zone));
	}

	FUNC0(page && FUNC6(zone, page), page);
	return page;

failed:
	FUNC11(flags);
	return NULL;
}