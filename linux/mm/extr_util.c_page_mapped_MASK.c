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
struct page {int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct page* FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 

bool FUNC7(struct page *page)
{
	int i;

	if (FUNC6(!FUNC0(page)))
		return FUNC2(&page->_mapcount) >= 0;
	page = FUNC3(page);
	if (FUNC2(FUNC4(page)) >= 0)
		return true;
	if (FUNC1(page))
		return false;
	for (i = 0; i < FUNC5(page); i++) {
		if (FUNC2(&page[i]._mapcount) >= 0)
			return true;
	}
	return false;
}