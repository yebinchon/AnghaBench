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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page**,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct page **pages, unsigned long npages,
			       bool make_dirty)
{
	unsigned long index;

	/*
	 * TODO: this can be optimized for huge pages: if a series of pages is
	 * physically contiguous and part of the same compound page, then a
	 * single operation to the head page should suffice.
	 */

	if (!make_dirty) {
		FUNC3(pages, npages);
		return;
	}

	for (index = 0; index < npages; index++) {
		struct page *page = FUNC1(pages[index]);
		/*
		 * Checking PageDirty at this point may race with
		 * clear_page_dirty_for_io(), but that's OK. Two key
		 * cases:
		 *
		 * 1) This code sees the page as already dirty, so it
		 * skips the call to set_page_dirty(). That could happen
		 * because clear_page_dirty_for_io() called
		 * page_mkclean(), followed by set_page_dirty().
		 * However, now the page is going to get written back,
		 * which meets the original intention of setting it
		 * dirty, so all is well: clear_page_dirty_for_io() goes
		 * on to call TestClearPageDirty(), and write the page
		 * back.
		 *
		 * 2) This code sees the page as clean, so it calls
		 * set_page_dirty(). The page stays dirty, despite being
		 * written back, so it gets written back again in the
		 * next writeback cycle. This is harmless.
		 */
		if (!FUNC0(page))
			FUNC4(page);
		FUNC2(page);
	}
}