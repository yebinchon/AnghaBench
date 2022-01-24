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
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGEVEC_SIZE ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*,struct pagevec*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned int,unsigned int) ; 
 struct page* FUNC7 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,struct page*) ; 
 int FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct pagevec*) ; 
 scalar_t__ FUNC15 (struct pagevec*,struct address_space*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC17 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct address_space*,struct pagevec*,int*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 scalar_t__ FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,unsigned int,unsigned int) ; 

void FUNC27(struct address_space *mapping,
				loff_t lstart, loff_t lend)
{
	pgoff_t		start;		/* inclusive */
	pgoff_t		end;		/* exclusive */
	unsigned int	partial_start;	/* inclusive */
	unsigned int	partial_end;	/* exclusive */
	struct pagevec	pvec;
	pgoff_t		indices[PAGEVEC_SIZE];
	pgoff_t		index;
	int		i;

	if (mapping->nrpages == 0 && mapping->nrexceptional == 0)
		goto out;

	/* Offsets within partial pages */
	partial_start = lstart & (PAGE_SIZE - 1);
	partial_end = (lend + 1) & (PAGE_SIZE - 1);

	/*
	 * 'start' and 'end' always covers the range of pages to be fully
	 * truncated. Partial pages are covered with 'partial_start' at the
	 * start of the range and 'partial_end' at the end of the range.
	 * Note that 'end' is exclusive while 'lend' is inclusive.
	 */
	start = (lstart + PAGE_SIZE - 1) >> PAGE_SHIFT;
	if (lend == -1)
		/*
		 * lend == -1 indicates end-of-file so we have to set 'end'
		 * to the highest possible pgoff_t and since the type is
		 * unsigned we're using -1.
		 */
		end = -1;
	else
		end = (lend + 1) >> PAGE_SHIFT;

	FUNC14(&pvec);
	index = start;
	while (index < end && FUNC15(&pvec, mapping, index,
			FUNC9(end - index, (pgoff_t)PAGEVEC_SIZE),
			indices)) {
		/*
		 * Pagevec array has exceptional entries and we may also fail
		 * to lock some pages. So we store pages that can be deleted
		 * in a new pagevec.
		 */
		struct pagevec locked_pvec;

		FUNC14(&locked_pvec);
		for (i = 0; i < FUNC13(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = indices[i];
			if (index >= end)
				break;

			if (FUNC25(page))
				continue;

			if (!FUNC22(page))
				continue;
			FUNC1(FUNC11(page) != index);
			if (FUNC0(page)) {
				FUNC23(page);
				continue;
			}
			if (page->mapping != mapping) {
				FUNC23(page);
				continue;
			}
			FUNC12(&locked_pvec, page);
		}
		for (i = 0; i < FUNC13(&locked_pvec); i++)
			FUNC19(mapping, locked_pvec.pages[i]);
		FUNC5(mapping, &locked_pvec);
		for (i = 0; i < FUNC13(&locked_pvec); i++)
			FUNC23(locked_pvec.pages[i]);
		FUNC20(mapping, &pvec, indices, end);
		FUNC16(&pvec);
		FUNC4();
		index++;
	}
	if (partial_start) {
		struct page *page = FUNC7(mapping, start - 1);
		if (page) {
			unsigned int top = PAGE_SIZE;
			if (start > end) {
				/* Truncation within a single page */
				top = partial_end;
				partial_end = 0;
			}
			FUNC24(page);
			FUNC26(page, partial_start, top);
			FUNC3(mapping, page);
			if (FUNC10(page))
				FUNC6(page, partial_start,
						  top - partial_start);
			FUNC23(page);
			FUNC18(page);
		}
	}
	if (partial_end) {
		struct page *page = FUNC7(mapping, end);
		if (page) {
			FUNC24(page);
			FUNC26(page, 0, partial_end);
			FUNC3(mapping, page);
			if (FUNC10(page))
				FUNC6(page, 0,
						  partial_end);
			FUNC23(page);
			FUNC18(page);
		}
	}
	/*
	 * If the truncation happened within a single page no pages
	 * will be released, just zeroed, so we can bail out now.
	 */
	if (start >= end)
		goto out;

	index = start;
	for ( ; ; ) {
		FUNC4();
		if (!FUNC15(&pvec, mapping, index,
			FUNC9(end - index, (pgoff_t)PAGEVEC_SIZE), indices)) {
			/* If all gone from start onwards, we're done */
			if (index == start)
				break;
			/* Otherwise restart to make sure all gone */
			index = start;
			continue;
		}
		if (index == start && indices[0] >= end) {
			/* All gone out of hole to be punched, we're done */
			FUNC17(&pvec);
			FUNC16(&pvec);
			break;
		}

		for (i = 0; i < FUNC13(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = indices[i];
			if (index >= end) {
				/* Restart punch to make sure all gone */
				index = start - 1;
				break;
			}

			if (FUNC25(page))
				continue;

			FUNC8(page);
			FUNC1(FUNC11(page) != index);
			FUNC24(page);
			FUNC21(mapping, page);
			FUNC23(page);
		}
		FUNC20(mapping, &pvec, indices, end);
		FUNC16(&pvec);
		index++;
	}

out:
	FUNC2(mapping);
}