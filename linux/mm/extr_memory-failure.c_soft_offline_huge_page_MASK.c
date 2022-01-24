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
struct page {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_SYNC ; 
 int /*<<< orphan*/  MPOL_MF_MOVE_ALL ; 
 int /*<<< orphan*/  MR_MEMORY_FAILURE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_page ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned long FUNC9 (struct page*) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC9(page);
	struct page *hpage = FUNC2(page);
	FUNC0(pagelist);

	/*
	 * This double-check of PageHWPoison is to avoid the race with
	 * memory_failure(). See also comment in __soft_offline_page().
	 */
	FUNC6(hpage);
	if (FUNC1(hpage)) {
		FUNC14(hpage);
		FUNC11(hpage);
		FUNC10("soft offline: %#lx hugepage already poisoned\n", pfn);
		return -EBUSY;
	}
	FUNC14(hpage);

	ret = FUNC4(hpage, &pagelist);
	/*
	 * get_any_page() and isolate_huge_page() takes a refcount each,
	 * so need to drop one here.
	 */
	FUNC11(hpage);
	if (!ret) {
		FUNC10("soft offline: %#lx hugepage failed to isolate\n", pfn);
		return -EBUSY;
	}

	ret = FUNC7(&pagelist, new_page, NULL, MPOL_MF_MOVE_ALL,
				MIGRATE_SYNC, MR_MEMORY_FAILURE);
	if (ret) {
		FUNC10("soft offline: %#lx: hugepage migration failed %d, type %lx (%pGp)\n",
			pfn, ret, page->flags, &page->flags);
		if (!FUNC5(&pagelist))
			FUNC12(&pagelist);
		if (ret > 0)
			ret = -EIO;
	} else {
		/*
		 * We set PG_hwpoison only when the migration source hugepage
		 * was successfully dissolved, because otherwise hwpoisoned
		 * hugepage remains on free hugepage list, then userspace will
		 * find it as SIGBUS by allocation failure. That's not expected
		 * in soft-offlining.
		 */
		ret = FUNC3(page);
		if (!ret) {
			if (FUNC13(page))
				FUNC8();
			else
				ret = -EBUSY;
		}
	}
	return ret;
}