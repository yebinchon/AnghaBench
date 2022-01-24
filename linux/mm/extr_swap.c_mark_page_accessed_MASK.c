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
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

void FUNC13(struct page *page)
{
	page = FUNC9(page);
	if (!FUNC1(page) && !FUNC4(page) &&
			FUNC3(page)) {

		/*
		 * If the page is on the LRU, queue it for activation via
		 * activate_page_pvecs. Otherwise, assume the page is on a
		 * pagevec, mark it active and it'll be moved to the active
		 * LRU on the next drain.
		 */
		if (FUNC2(page))
			FUNC7(page);
		else
			FUNC6(page);
		FUNC0(page);
		if (FUNC10(page))
			FUNC12(page);
	} else if (!FUNC3(page)) {
		FUNC5(page);
	}
	if (FUNC11(page))
		FUNC8(page);
}