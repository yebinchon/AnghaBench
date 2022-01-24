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
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_ANON_MAPPED ; 
 int /*<<< orphan*/  NR_ANON_THPS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/ * FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct page *page)
{
	int i, nr;

	if (!FUNC6(-1, FUNC8(page)))
		return;

	/* Hugepages are not counted in NR_ANON_PAGES for now. */
	if (FUNC11(FUNC1(page)))
		return;

	if (!FUNC0(CONFIG_TRANSPARENT_HUGEPAGE))
		return;

	FUNC4(page, NR_ANON_THPS);

	if (FUNC3(page)) {
		/*
		 * Subpages can be mapped with PTEs too. Check how many of
		 * themi are still mapped.
		 */
		for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
			if (FUNC6(-1, &page[i]._mapcount))
				nr++;
		}
	} else {
		nr = HPAGE_PMD_NR;
	}

	if (FUNC11(FUNC2(page)))
		FUNC7(page);

	if (nr) {
		FUNC5(FUNC10(page), NR_ANON_MAPPED, -nr);
		FUNC9(page);
	}
}