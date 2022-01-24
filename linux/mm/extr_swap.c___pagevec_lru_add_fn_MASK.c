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
struct lruvec {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int LRU_UNEVICTABLE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGCULLED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGRESCUED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct lruvec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct page *page, struct lruvec *lruvec,
				 void *arg)
{
	enum lru_list lru;
	int was_unevictable = FUNC5(page);

	FUNC6(FUNC2(page), page);

	FUNC3(page);
	/*
	 * Page becomes evictable in two ways:
	 * 1) Within LRU lock [munlock_vma_page() and __munlock_pagevec()].
	 * 2) Before acquiring LRU lock to put the page to correct LRU and then
	 *   a) do PageLRU check with lock [check_move_unevictable_pages]
	 *   b) do PageLRU check before lock [clear_page_mlock]
	 *
	 * (1) & (2a) are ok as LRU lock will serialize them. For (2b), we need
	 * following strict ordering:
	 *
	 * #0: __pagevec_lru_add_fn		#1: clear_page_mlock
	 *
	 * SetPageLRU()				TestClearPageMlocked()
	 * smp_mb() // explicit ordering	// above provides strict
	 *					// ordering
	 * PageMlocked()			PageLRU()
	 *
	 *
	 * if '#1' does not observe setting of PG_lru by '#0' and fails
	 * isolation, the explicit barrier will make sure that page_evictable
	 * check will put the page in correct LRU. Without smp_mb(), SetPageLRU
	 * can be reordered after PageMlocked check and can make '#1' to fail
	 * the isolation of the page whose Mlocked bit is cleared (#0 is also
	 * looking at the same page) and the evictable page will be stranded
	 * in an unevictable LRU.
	 */
	FUNC12();

	if (FUNC9(page)) {
		lru = FUNC11(page);
		FUNC14(lruvec, FUNC10(page),
					 FUNC1(page));
		if (was_unevictable)
			FUNC8(UNEVICTABLE_PGRESCUED);
	} else {
		lru = LRU_UNEVICTABLE;
		FUNC0(page);
		FUNC4(page);
		if (!was_unevictable)
			FUNC8(UNEVICTABLE_PGCULLED);
	}

	FUNC7(page, lruvec, lru);
	FUNC13(page, lru);
}