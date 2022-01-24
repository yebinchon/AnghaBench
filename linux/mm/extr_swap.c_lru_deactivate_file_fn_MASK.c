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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PGDEACTIVATE ; 
 int /*<<< orphan*/  PGROTATED ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct lruvec*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct lruvec*,int) ; 
 int FUNC12 (struct page*) ; 
 int FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct lruvec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct page *page, struct lruvec *lruvec,
			      void *arg)
{
	int lru, file;
	bool active;

	if (!FUNC4(page))
		return;

	if (FUNC5(page))
		return;

	/* Some processes are using the page */
	if (FUNC14(page))
		return;

	active = FUNC2(page);
	file = FUNC12(page);
	lru = FUNC13(page);

	FUNC11(page, lruvec, lru + active);
	FUNC0(page);
	FUNC1(page);

	if (FUNC6(page) || FUNC3(page)) {
		/*
		 * PG_reclaim could be raced with end_page_writeback
		 * It can make readahead confusing.  But race window
		 * is _really_ small and  it's non-critical problem.
		 */
		FUNC9(page, lruvec, lru);
		FUNC7(page);
	} else {
		/*
		 * The page's writeback ends up during pagevec
		 * We moves tha page into tail of inactive.
		 */
		FUNC10(page, lruvec, lru);
		FUNC8(PGROTATED);
	}

	if (active)
		FUNC8(PGDEACTIVATE);
	FUNC15(lruvec, file, 0);
}