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
struct page {unsigned long flags; int /*<<< orphan*/ * mapping; } ;
struct dev_pagemap {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int MF_COUNT_INCREASED ; 
 int /*<<< orphan*/  MF_DELAYED ; 
 int /*<<< orphan*/  MF_IGNORED ; 
 int /*<<< orphan*/  MF_MSG_BUDDY ; 
 int /*<<< orphan*/  MF_MSG_BUDDY_2ND ; 
 int /*<<< orphan*/  MF_MSG_DIFFERENT_COMPOUND ; 
 int /*<<< orphan*/  MF_MSG_KERNEL_HIGH_ORDER ; 
 int /*<<< orphan*/  MF_MSG_TRUNCATED_LRU ; 
 int /*<<< orphan*/  MF_MSG_UNMAP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC12 (struct page*) ; 
 struct dev_pagemap* FUNC13 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,unsigned long,int,struct page**) ; 
 int FUNC17 (unsigned long,struct page*,unsigned long) ; 
 scalar_t__ FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int FUNC20 (unsigned long,int,struct dev_pagemap*) ; 
 int FUNC21 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (char*,unsigned long) ; 
 struct page* FUNC26 (unsigned long) ; 
 scalar_t__ FUNC27 (unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 
 int /*<<< orphan*/  FUNC30 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  sysctl_memory_failure_recovery ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 

int FUNC35(unsigned long pfn, int flags)
{
	struct page *p;
	struct page *hpage;
	struct page *orig_head;
	struct dev_pagemap *pgmap;
	int res;
	unsigned long page_flags;

	if (!sysctl_memory_failure_recovery)
		FUNC25("Memory failure on page %lx", pfn);

	p = FUNC26(pfn);
	if (!p) {
		if (FUNC27(pfn)) {
			pgmap = FUNC13(pfn, NULL);
			if (pgmap)
				return FUNC20(pfn, flags,
								  pgmap);
		}
		FUNC28("Memory failure: %#lx: memory outside kernel control\n",
			pfn);
		return -ENXIO;
	}

	if (FUNC3(p))
		return FUNC21(pfn, flags);
	if (FUNC9(p)) {
		FUNC28("Memory failure: %#lx: already hardware poisoned\n",
			pfn);
		return 0;
	}

	orig_head = hpage = FUNC12(p);
	FUNC23();

	/*
	 * We need/can do nothing about count=0 pages.
	 * 1) it's a free page, and therefore in safe hand:
	 *    prep_new_page() will be the gate keeper.
	 * 2) it's part of a non-compound high order page.
	 *    Implies some kernel user: cannot stop them from
	 *    R/W the page; let's pray that the page has been
	 *    used and will be freed some time later.
	 * In fact it's dangerous to directly bump up page count from 0,
	 * that may make page_ref_freeze()/page_ref_unfreeze() mismatch.
	 */
	if (!(flags & MF_COUNT_INCREASED) && !FUNC14(p)) {
		if (FUNC18(p)) {
			FUNC11(pfn, MF_MSG_BUDDY, MF_DELAYED);
			return 0;
		} else {
			FUNC11(pfn, MF_MSG_KERNEL_HIGH_ORDER, MF_IGNORED);
			return -EBUSY;
		}
	}

	if (FUNC6(hpage)) {
		FUNC19(p);
		if (!FUNC0(p) || FUNC32(FUNC31(p))) {
			FUNC33(p);
			if (!FUNC0(p))
				FUNC28("Memory failure: %#lx: non anonymous thp\n",
					pfn);
			else
				FUNC28("Memory failure: %#lx: thp split failed\n",
					pfn);
			if (FUNC8(p))
				FUNC22();
			FUNC29(p);
			return -EBUSY;
		}
		FUNC33(p);
		FUNC10(!FUNC24(p), p);
		hpage = FUNC12(p);
	}

	/*
	 * We ignore non-LRU pages for good reasons.
	 * - PG_locked is only well defined for LRU pages and a few others
	 * - to avoid races with __SetPageLocked()
	 * - to avoid races with __SetPageSlab*() (and more non-atomic ops)
	 * The check (unnecessarily) ignores LRU pages being isolated and
	 * walked by the page reclaim code, however that's not a big loss.
	 */
	FUNC30(p, 0);
	/* shake_page could have turned it free. */
	if (!FUNC4(p) && FUNC18(p)) {
		if (flags & MF_COUNT_INCREASED)
			FUNC11(pfn, MF_MSG_BUDDY, MF_DELAYED);
		else
			FUNC11(pfn, MF_MSG_BUDDY_2ND, MF_DELAYED);
		return 0;
	}

	FUNC19(p);

	/*
	 * The page could have changed compound pages during the locking.
	 * If this happens just bail out.
	 */
	if (FUNC1(p) && FUNC12(p) != orig_head) {
		FUNC11(pfn, MF_MSG_DIFFERENT_COMPOUND, MF_IGNORED);
		res = -EBUSY;
		goto out;
	}

	/*
	 * We use page flags to determine what action should be taken, but
	 * the flags can be modified by the error containment action.  One
	 * example is an mlocked page, where PG_mlocked is cleared by
	 * page_remove_rmap() in try_to_unmap_one(). So to determine page status
	 * correctly, we save a copy of the page flags at this time.
	 */
	if (FUNC3(p))
		page_flags = hpage->flags;
	else
		page_flags = p->flags;

	/*
	 * unpoison always clear PG_hwpoison inside page lock
	 */
	if (!FUNC2(p)) {
		FUNC28("Memory failure: %#lx: just unpoisoned\n", pfn);
		FUNC22();
		FUNC33(p);
		FUNC29(p);
		return 0;
	}
	if (FUNC15(p)) {
		if (FUNC8(p))
			FUNC22();
		FUNC33(p);
		FUNC29(p);
		return 0;
	}

	if (!FUNC7(p) && !FUNC4(p))
		goto identify_page_state;

	/*
	 * It's very difficult to mess with pages currently under IO
	 * and in many cases impossible, so we just avoid it here.
	 */
	FUNC34(p);

	/*
	 * Now take care of user space mappings.
	 * Abort on fail: __delete_from_page_cache() assumes unmapped page.
	 *
	 * When the raw error page is thp tail page, hpage points to the raw
	 * page after thp split.
	 */
	if (!FUNC16(p, pfn, flags, &hpage)) {
		FUNC11(pfn, MF_MSG_UNMAP_FAILED, MF_IGNORED);
		res = -EBUSY;
		goto out;
	}

	/*
	 * Torn down by someone else?
	 */
	if (FUNC4(p) && !FUNC5(p) && p->mapping == NULL) {
		FUNC11(pfn, MF_MSG_TRUNCATED_LRU, MF_IGNORED);
		res = -EBUSY;
		goto out;
	}

identify_page_state:
	res = FUNC17(pfn, p, page_flags);
out:
	FUNC33(p);
	return res;
}