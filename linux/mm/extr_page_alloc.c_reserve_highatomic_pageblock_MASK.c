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
struct zone {unsigned long nr_reserved_highatomic; int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIGRATE_HIGHATOMIC ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct zone*) ; 

__attribute__((used)) static void FUNC9(struct page *page, struct zone *zone,
				unsigned int alloc_order)
{
	int mt;
	unsigned long max_managed, flags;

	/*
	 * Limit the number reserved to 1 pageblock or roughly 1% of a zone.
	 * Check is race-prone but harmless.
	 */
	max_managed = (FUNC8(zone) / 100) + pageblock_nr_pages;
	if (zone->nr_reserved_highatomic >= max_managed)
		return;

	FUNC6(&zone->lock, flags);

	/* Recheck the nr_reserved_highatomic limit under the lock */
	if (zone->nr_reserved_highatomic >= max_managed)
		goto out_unlock;

	/* Yoink! */
	mt = FUNC0(page);
	if (!FUNC2(mt) && !FUNC3(mt)
	    && !FUNC1(mt)) {
		zone->nr_reserved_highatomic += pageblock_nr_pages;
		FUNC5(page, MIGRATE_HIGHATOMIC);
		FUNC4(zone, page, MIGRATE_HIGHATOMIC, NULL);
	}

out_unlock:
	FUNC7(&zone->lock, flags);
}