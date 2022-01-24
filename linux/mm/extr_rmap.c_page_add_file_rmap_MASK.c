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
 int /*<<< orphan*/  NR_FILE_MAPPED ; 
 int /*<<< orphan*/  NR_FILE_PMDMAPPED ; 
 int /*<<< orphan*/  NR_SHMEM_PMDMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/ * FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

void FUNC17(struct page *page, bool compound)
{
	int i, nr = 1;

	FUNC6(compound && !FUNC4(page), page);
	FUNC14(page);
	if (compound && FUNC4(page)) {
		for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
			if (FUNC10(&page[i]._mapcount))
				nr++;
		}
		if (!FUNC10(FUNC13(page)))
			goto out;
		if (FUNC2(page))
			FUNC8(page, NR_SHMEM_PMDMAPPED);
		else
			FUNC8(page, NR_FILE_PMDMAPPED);
	} else {
		if (FUNC3(page) && FUNC15(page)) {
			FUNC7(!FUNC0(page));

			FUNC5(FUNC12(page));
			if (FUNC1(page))
				FUNC11(FUNC12(page));
		}
		if (!FUNC10(&page->_mapcount))
			goto out;
	}
	FUNC9(page, NR_FILE_MAPPED, nr);
out:
	FUNC16(page);
}