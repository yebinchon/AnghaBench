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
struct page {unsigned long flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int MF_COUNT_INCREASED ; 
 int /*<<< orphan*/  MF_DELAYED ; 
 int /*<<< orphan*/  MF_IGNORED ; 
 int /*<<< orphan*/  MF_MSG_FREE_HUGE ; 
 int /*<<< orphan*/  MF_MSG_NON_PMD_HUGE ; 
 int /*<<< orphan*/  MF_MSG_UNMAP_FAILED ; 
 scalar_t__ PMD_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned long,int,struct page**) ; 
 int FUNC10 (unsigned long,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct page* FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

__attribute__((used)) static int FUNC19(unsigned long pfn, int flags)
{
	struct page *p = FUNC15(pfn);
	struct page *head = FUNC4(p);
	int res;
	unsigned long page_flags;

	if (FUNC2(head)) {
		FUNC16("Memory failure: %#lx: already hardware poisoned\n",
		       pfn);
		return 0;
	}

	FUNC13();

	if (!(flags & MF_COUNT_INCREASED) && !FUNC6(p)) {
		/*
		 * Check "filter hit" and "race with other subpage."
		 */
		FUNC11(head);
		if (FUNC0(head)) {
			if ((FUNC8(p) && FUNC1(p))
			    || (p != head && FUNC2(head))) {
				FUNC12();
				FUNC18(head);
				return 0;
			}
		}
		FUNC18(head);
		FUNC5(p);
		FUNC3(pfn, MF_MSG_FREE_HUGE, MF_DELAYED);
		return 0;
	}

	FUNC11(head);
	page_flags = head->flags;

	if (!FUNC0(head)) {
		FUNC16("Memory failure: %#lx: just unpoisoned\n", pfn);
		FUNC12();
		FUNC18(head);
		FUNC17(head);
		return 0;
	}

	/*
	 * TODO: hwpoison for pud-sized hugetlb doesn't work right now, so
	 * simply disable it. In order to make it work properly, we need
	 * make sure that:
	 *  - conversion of a pud that maps an error hugetlb into hwpoison
	 *    entry properly works, and
	 *  - other mm code walking over page table is aware of pud-aligned
	 *    hwpoison entries.
	 */
	if (FUNC7(FUNC14(head)) > PMD_SIZE) {
		FUNC3(pfn, MF_MSG_NON_PMD_HUGE, MF_IGNORED);
		res = -EBUSY;
		goto out;
	}

	if (!FUNC9(p, pfn, flags, &head)) {
		FUNC3(pfn, MF_MSG_UNMAP_FAILED, MF_IGNORED);
		res = -EBUSY;
		goto out;
	}

	res = FUNC10(pfn, p, page_flags);
out:
	FUNC18(head);
	return res;
}