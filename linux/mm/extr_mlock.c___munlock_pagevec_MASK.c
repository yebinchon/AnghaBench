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
struct zone {TYPE_1__* zone_pgdat; } ;
struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lru_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_MLOCK ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct pagevec*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*,struct page*) ; 
 int FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static void FUNC17(struct pagevec *pvec, struct zone *zone)
{
	int i;
	int nr = FUNC10(pvec);
	int delta_munlocked = -nr;
	struct pagevec pvec_putback;
	int pgrescued = 0;

	FUNC11(&pvec_putback);

	/* Phase 1: page isolation */
	FUNC14(&zone->zone_pgdat->lru_lock);
	for (i = 0; i < nr; i++) {
		struct page *page = pvec->pages[i];

		if (FUNC0(page)) {
			/*
			 * We already have pin from follow_page_mask()
			 * so we can spare the get_page() here.
			 */
			if (FUNC2(page, false))
				continue;
			else
				FUNC4(page);
		} else {
			delta_munlocked++;
		}

		/*
		 * We won't be munlocking this page in the next phase
		 * but we still need to release the follow_page_mask()
		 * pin. We cannot do it under lru_lock however. If it's
		 * the last pin, __page_cache_release() would deadlock.
		 */
		FUNC9(&pvec_putback, pvec->pages[i]);
		pvec->pages[i] = NULL;
	}
	FUNC1(zone, NR_MLOCK, delta_munlocked);
	FUNC15(&zone->zone_pgdat->lru_lock);

	/* Now we can release pins of pages that we are not munlocking */
	FUNC12(&pvec_putback);

	/* Phase 2: page munlock */
	for (i = 0; i < nr; i++) {
		struct page *page = pvec->pages[i];

		if (page) {
			FUNC8(page);
			if (!FUNC6(page, &pvec_putback,
					&pgrescued)) {
				/*
				 * Slow path. We don't want to lose the last
				 * pin before unlock_page()
				 */
				FUNC7(page); /* for putback_lru_page() */
				FUNC3(page);
				FUNC16(page);
				FUNC13(page); /* from follow_page_mask() */
			}
		}
	}

	/*
	 * Phase 3: page putback for pages that qualified for the fast path
	 * This will also call put_page() to return pin from follow_page_mask()
	 */
	if (FUNC10(&pvec_putback))
		FUNC5(&pvec_putback, pgrescued);
}