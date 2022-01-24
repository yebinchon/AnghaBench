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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/  type; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long TTRS_ANYWAY ; 
 unsigned long TTRS_FULL ; 
 unsigned long TTRS_UNMAPPED ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct swap_info_struct *si,
				 unsigned long offset, unsigned long flags)
{
	swp_entry_t entry = FUNC5(si->type, offset);
	struct page *page;
	int ret = 0;

	page = FUNC0(FUNC4(entry), offset);
	if (!page)
		return 0;
	/*
	 * When this function is called from scan_swap_map_slots() and it's
	 * called by vmscan.c at reclaiming pages. So, we hold a lock on a page,
	 * here. We have to use trylock for avoiding deadlock. This is a special
	 * case and you should use try_to_free_swap() with explicit lock_page()
	 * in usual operations.
	 */
	if (FUNC7(page)) {
		if ((flags & TTRS_ANYWAY) ||
		    ((flags & TTRS_UNMAPPED) && !FUNC2(page)) ||
		    ((flags & TTRS_FULL) && FUNC1(page)))
			ret = FUNC6(page);
		FUNC8(page);
	}
	FUNC3(page);
	return ret;
}