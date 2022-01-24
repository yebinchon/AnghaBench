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
struct pagevec {struct page** pages; } ;
struct page {struct address_space* mapping; } ;
struct address_space {scalar_t__ nrpages; scalar_t__ nrexceptional; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EBUSY ; 
 int PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct address_space*) ; 
 int FUNC5 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 scalar_t__ FUNC14 (struct pagevec*,struct address_space*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC16 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct address_space*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (struct page*) ; 

int FUNC21(struct address_space *mapping,
				  pgoff_t start, pgoff_t end)
{
	pgoff_t indices[PAGEVEC_SIZE];
	struct pagevec pvec;
	pgoff_t index;
	int i;
	int ret = 0;
	int ret2 = 0;
	int did_range_unmap = 0;

	if (mapping->nrpages == 0 && mapping->nrexceptional == 0)
		goto out;

	FUNC13(&pvec);
	index = start;
	while (index <= end && FUNC14(&pvec, mapping, index,
			FUNC9(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1,
			indices)) {
		for (i = 0; i < FUNC12(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = indices[i];
			if (index > end)
				break;

			if (FUNC20(page)) {
				if (!FUNC7(mapping,
								   index, page))
					ret = -EBUSY;
				continue;
			}

			FUNC8(page);
			FUNC1(FUNC11(page) != index);
			if (page->mapping != mapping) {
				FUNC17(page);
				continue;
			}
			FUNC19(page);
			if (FUNC10(page)) {
				if (!did_range_unmap) {
					/*
					 * Zap the rest of the file in one hit.
					 */
					FUNC18(mapping, index,
						(1 + end - index), false);
					did_range_unmap = 1;
				} else {
					/*
					 * Just zap this page
					 */
					FUNC18(mapping, index,
								1, false);
				}
			}
			FUNC0(FUNC10(page));
			ret2 = FUNC5(mapping, page);
			if (ret2 == 0) {
				if (!FUNC6(mapping, page))
					ret2 = -EBUSY;
			}
			if (ret2 < 0)
				ret = ret2;
			FUNC17(page);
		}
		FUNC16(&pvec);
		FUNC15(&pvec);
		FUNC3();
		index++;
	}
	/*
	 * For DAX we invalidate page tables after invalidating page cache.  We
	 * could invalidate page tables while invalidating each entry however
	 * that would be expensive. And doing range unmapping before doesn't
	 * work as we have no cheap way to find whether page cache entry didn't
	 * get remapped later.
	 */
	if (FUNC4(mapping)) {
		FUNC18(mapping, start, end - start + 1, false);
	}
out:
	FUNC2(mapping);
	return ret;
}