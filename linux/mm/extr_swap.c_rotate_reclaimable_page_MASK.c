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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  lru_rotate_pvecs ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*) ; 
 struct pagevec* FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct page *page)
{
	if (!FUNC3(page) && !FUNC1(page) &&
	    !FUNC4(page) && FUNC2(page)) {
		struct pagevec *pvec;
		unsigned long flags;

		FUNC5(page);
		FUNC7(flags);
		pvec = FUNC10(&lru_rotate_pvecs);
		if (!FUNC8(pvec, page) || FUNC0(page))
			FUNC9(pvec);
		FUNC6(flags);
	}
}