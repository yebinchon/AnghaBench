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
struct zone {int /*<<< orphan*/  zone_pgdat; } ;
struct page {int /*<<< orphan*/  mapping; int /*<<< orphan*/  index; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EAGAIN ; 
 int HPAGE_PMD_NR ; 
 int MIGRATEPAGE_SUCCESS ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 int /*<<< orphan*/  NR_ZONE_WRITE_PENDING ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zone*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct address_space*,struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (struct address_space*) ; 
 int FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,scalar_t__) ; 
 struct zone* FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xas ; 
 struct page* FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

int FUNC32(struct address_space *mapping,
		struct page *newpage, struct page *page, int extra_count)
{
	FUNC8(xas, &mapping->i_pages, FUNC19(page));
	struct zone *oldzone, *newzone;
	int dirty;
	int expected_count = FUNC14(mapping, page) + extra_count;

	if (!mapping) {
		/* Anonymous page without mapping */
		if (FUNC18(page) != expected_count)
			return -EAGAIN;

		/* No turning back from here */
		newpage->index = page->index;
		newpage->mapping = page->mapping;
		if (FUNC2(page))
			FUNC9(newpage);

		return MIGRATEPAGE_SUCCESS;
	}

	oldzone = FUNC24(page);
	newzone = FUNC24(newpage);

	FUNC27(&xas);
	if (FUNC18(page) != expected_count || FUNC26(&xas) != page) {
		FUNC31(&xas);
		return -EAGAIN;
	}

	if (!FUNC22(page, expected_count)) {
		FUNC31(&xas);
		return -EAGAIN;
	}

	/*
	 * Now we know that no one else is looking at the page:
	 * no turning back from here.
	 */
	newpage->index = page->index;
	newpage->mapping = page->mapping;
	FUNC21(newpage, FUNC15(page)); /* add cache reference */
	if (FUNC2(page)) {
		FUNC9(newpage);
		if (FUNC3(page)) {
			FUNC6(newpage);
			FUNC25(newpage, FUNC20(page));
		}
	} else {
		FUNC7(FUNC3(page), page);
	}

	/* Move dirty while page refs frozen and newpage not yet exposed */
	dirty = FUNC1(page);
	if (dirty) {
		FUNC0(page);
		FUNC5(newpage);
	}

	FUNC29(&xas, newpage);
	if (FUNC4(page)) {
		int i;

		for (i = 1; i < HPAGE_PMD_NR; i++) {
			FUNC28(&xas);
			FUNC29(&xas, newpage);
		}
	}

	/*
	 * Drop cache reference from old page by unfreezing
	 * to one less reference.
	 * We know this isn't the last reference.
	 */
	FUNC23(page, expected_count - FUNC15(page));

	FUNC30(&xas);
	/* Leave irq disabled to prevent preemption while updating stats */

	/*
	 * If moved to a different zone then also account
	 * the page for that zone. Other VM counters will be
	 * taken care of when we establish references to the
	 * new page and drop references to the old page.
	 *
	 * Note that anonymous pages are accounted for
	 * via NR_FILE_PAGES and NR_ANON_MAPPED if they
	 * are mapped to swap space.
	 */
	if (newzone != oldzone) {
		FUNC10(oldzone->zone_pgdat, NR_FILE_PAGES);
		FUNC12(newzone->zone_pgdat, NR_FILE_PAGES);
		if (FUNC2(page) && !FUNC3(page)) {
			FUNC10(oldzone->zone_pgdat, NR_SHMEM);
			FUNC12(newzone->zone_pgdat, NR_SHMEM);
		}
		if (dirty && FUNC17(mapping)) {
			FUNC10(oldzone->zone_pgdat, NR_FILE_DIRTY);
			FUNC11(oldzone, NR_ZONE_WRITE_PENDING);
			FUNC12(newzone->zone_pgdat, NR_FILE_DIRTY);
			FUNC13(newzone, NR_ZONE_WRITE_PENDING);
		}
	}
	FUNC16();

	return MIGRATEPAGE_SUCCESS;
}