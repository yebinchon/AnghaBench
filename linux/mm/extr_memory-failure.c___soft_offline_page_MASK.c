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
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  ISOLATE_UNEVICTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_SYNC ; 
 int /*<<< orphan*/  MPOL_MF_MOVE_ALL ; 
 int /*<<< orphan*/  MR_MEMORY_FAILURE ; 
 scalar_t__ NR_ISOLATED_ANON ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,scalar_t__) ; 
 int FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 int FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_page ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 unsigned long FUNC16 (struct page*) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC17 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC16(page);

	/*
	 * Check PageHWPoison again inside page lock because PageHWPoison
	 * is set by memory_failure() outside page lock. Note that
	 * memory_failure() also double-checks PageHWPoison inside page lock,
	 * so there's no race between soft_offline_page() and memory_failure().
	 */
	FUNC11(page);
	FUNC21(page);
	if (FUNC1(page)) {
		FUNC20(page);
		FUNC18(page);
		FUNC17("soft offline: %#lx page already poisoned\n", pfn);
		return -EBUSY;
	}
	/*
	 * Try to invalidate first. This should work for
	 * non dirty unmapped page cache pages.
	 */
	ret = FUNC6(page);
	FUNC20(page);
	/*
	 * RED-PEN would be better to keep it isolated here, but we
	 * would need to fix isolation locking first.
	 */
	if (ret == 1) {
		FUNC18(page);
		FUNC17("soft_offline: %#lx: invalidated\n", pfn);
		FUNC3(page);
		FUNC13();
		return 0;
	}

	/*
	 * Simple invalidation didn't work.
	 * Try to migrate to a new page instead. migrate.c
	 * handles a large number of cases for us.
	 */
	if (FUNC2(page))
		ret = FUNC7(page);
	else
		ret = FUNC8(page, ISOLATE_UNEVICTABLE);
	/*
	 * Drop page reference which is came from get_any_page()
	 * successful isolate_lru_page() already took another one.
	 */
	FUNC18(page);
	if (!ret) {
		FUNC0(pagelist);
		/*
		 * After isolated lru page, the PageLRU will be cleared,
		 * so use !__PageMovable instead for LRU page's mapping
		 * cannot have PAGE_MAPPING_MOVABLE.
		 */
		if (!FUNC4(page))
			FUNC5(page, NR_ISOLATED_ANON +
						FUNC15(page));
		FUNC9(&page->lru, &pagelist);
		ret = FUNC12(&pagelist, new_page, NULL, MPOL_MF_MOVE_ALL,
					MIGRATE_SYNC, MR_MEMORY_FAILURE);
		if (ret) {
			if (!FUNC10(&pagelist))
				FUNC19(&pagelist);

			FUNC17("soft offline: %#lx: migration failed %d, type %lx (%pGp)\n",
				pfn, ret, page->flags, &page->flags);
			if (ret > 0)
				ret = -EIO;
		}
	} else {
		FUNC17("soft offline: %#lx: isolation failed: %d, page count %d, type %lx (%pGp)\n",
			pfn, ret, FUNC14(page), page->flags, &page->flags);
	}
	return ret;
}