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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct page *page)
{
	int i, compound, ret;

	FUNC5(FUNC4(page), page);

	if (FUNC8(!FUNC1(page)))
		return FUNC6(&page->_mapcount) + 1;

	compound = FUNC7(page);
	if (FUNC3(page))
		return compound;
	ret = compound;
	for (i = 0; i < HPAGE_PMD_NR; i++)
		ret += FUNC6(&page[i]._mapcount) + 1;
	/* File pages has compound_mapcount included in _mapcount */
	if (!FUNC0(page))
		return ret - compound * HPAGE_PMD_NR;
	if (FUNC2(page))
		ret -= HPAGE_PMD_NR;
	return ret;
}