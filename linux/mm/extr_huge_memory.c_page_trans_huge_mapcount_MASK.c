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
 int HPAGE_PMD_NR ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct page* FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int,int) ; 

int FUNC9(struct page *page, int *total_mapcount)
{
	int i, ret, _total_mapcount, mapcount;

	/* hugetlbfs shouldn't call it */
	FUNC3(FUNC1(page), page);

	if (FUNC7(!FUNC2(page))) {
		mapcount = FUNC4(&page->_mapcount) + 1;
		if (total_mapcount)
			*total_mapcount = mapcount;
		return mapcount;
	}

	page = FUNC5(page);

	_total_mapcount = ret = 0;
	for (i = 0; i < HPAGE_PMD_NR; i++) {
		mapcount = FUNC4(&page[i]._mapcount) + 1;
		ret = FUNC8(ret, mapcount);
		_total_mapcount += mapcount;
	}
	if (FUNC0(page)) {
		ret -= 1;
		_total_mapcount -= HPAGE_PMD_NR;
	}
	mapcount = FUNC6(page);
	ret += mapcount;
	_total_mapcount += mapcount;
	if (total_mapcount)
		*total_mapcount = _total_mapcount;
	return ret;
}