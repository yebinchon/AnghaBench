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
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/ * FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static void FUNC15(struct page *page, bool compound)
{
	int i, nr = 1;

	FUNC5(compound && !FUNC0(page), page);
	FUNC12(page);

	/* Hugepages are not counted in NR_FILE_MAPPED for now. */
	if (FUNC13(FUNC1(page))) {
		/* hugetlb pages are always mapped with pmds */
		FUNC9(FUNC11(page));
		goto out;
	}

	/* page still mapped by someone else? */
	if (compound && FUNC4(page)) {
		for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
			if (FUNC8(-1, &page[i]._mapcount))
				nr++;
		}
		if (!FUNC8(-1, FUNC11(page)))
			goto out;
		if (FUNC3(page))
			FUNC6(page, NR_SHMEM_PMDMAPPED);
		else
			FUNC6(page, NR_FILE_PMDMAPPED);
	} else {
		if (!FUNC8(-1, &page->_mapcount))
			goto out;
	}

	/*
	 * We use the irq-unsafe __{inc|mod}_lruvec_page_state because
	 * these counters are not modified in interrupt context, and
	 * pte lock(a spinlock) is held, which implies preemption disabled.
	 */
	FUNC7(page, NR_FILE_MAPPED, -nr);

	if (FUNC13(FUNC2(page)))
		FUNC10(page);
out:
	FUNC14(page);
}