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
struct page {long flags; scalar_t__ mapping; scalar_t__ index; int /*<<< orphan*/  _mapcount; } ;
struct lruvec {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 long PAGE_FLAGS_CHECK_AT_PREP ; 
 long PG_active ; 
 long PG_dirty ; 
 long PG_locked ; 
 long PG_mlocked ; 
 long PG_referenced ; 
 long PG_swapbacked ; 
 long PG_swapcache ; 
 long PG_unevictable ; 
 long PG_uptodate ; 
 long PG_workingset ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ TAIL_MAPPING ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*,struct lruvec*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct page *head, int tail,
		struct lruvec *lruvec, struct list_head *list)
{
	struct page *page_tail = head + tail;

	FUNC2(FUNC3(&page_tail->_mapcount) != -1, page_tail);

	/*
	 * Clone page flags before unfreezing refcount.
	 *
	 * After successful get_page_unless_zero() might follow flags change,
	 * for exmaple lock_page() which set PG_waiters.
	 */
	page_tail->flags &= ~PAGE_FLAGS_CHECK_AT_PREP;
	page_tail->flags |= (head->flags &
			((1L << PG_referenced) |
			 (1L << PG_swapbacked) |
			 (1L << PG_swapcache) |
			 (1L << PG_mlocked) |
			 (1L << PG_uptodate) |
			 (1L << PG_active) |
			 (1L << PG_workingset) |
			 (1L << PG_locked) |
			 (1L << PG_unevictable) |
			 (1L << PG_dirty)));

	/* ->mapping in first tail page is compound_mapcount */
	FUNC2(tail > 2 && page_tail->mapping != TAIL_MAPPING,
			page_tail);
	page_tail->mapping = head->mapping;
	page_tail->index = head->index + tail;

	/* Page flags must be visible before we make the page non-compound. */
	FUNC13();

	/*
	 * Clear PageTail before unfreezing page refcount.
	 *
	 * After successful get_page_unless_zero() might follow put_page()
	 * which needs correct compound_head().
	 */
	FUNC4(page_tail);

	/* Finally unfreeze refcount. Additional reference from page cache. */
	FUNC10(page_tail, 1 + (!FUNC0(head) ||
					  FUNC1(head)));

	if (FUNC9(head))
		FUNC12(page_tail);
	if (FUNC8(head))
		FUNC11(page_tail);

	FUNC7(page_tail, FUNC6(head));

	/*
	 * always add to the tail because some iterators expect new
	 * pages to show after the currently processed elements - e.g.
	 * migrate_pages
	 */
	FUNC5(head, page_tail, lruvec, list);
}