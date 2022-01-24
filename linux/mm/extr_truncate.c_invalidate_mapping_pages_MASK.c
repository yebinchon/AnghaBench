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
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int HPAGE_PMD_NR ; 
 int PAGEVEC_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*,scalar_t__,struct page*) ; 
 unsigned long FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*) ; 
 scalar_t__ FUNC12 (struct pagevec*,struct address_space*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 scalar_t__ FUNC18 (struct page*) ; 

unsigned long FUNC19(struct address_space *mapping,
		pgoff_t start, pgoff_t end)
{
	pgoff_t indices[PAGEVEC_SIZE];
	struct pagevec pvec;
	pgoff_t index = start;
	unsigned long ret;
	unsigned long count = 0;
	int i;

	FUNC11(&pvec);
	while (index <= end && FUNC12(&pvec, mapping, index,
			FUNC8(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1,
			indices)) {
		for (i = 0; i < FUNC10(&pvec); i++) {
			struct page *page = pvec.pages[i];

			/* We rely upon deletion not changing page->index */
			index = indices[i];
			if (index > end)
				break;

			if (FUNC18(page)) {
				FUNC6(mapping, index,
							     page);
				continue;
			}

			if (!FUNC16(page))
				continue;

			FUNC2(FUNC9(page) != index);

			/* Middle of THP: skip */
			if (FUNC1(page)) {
				FUNC17(page);
				continue;
			} else if (FUNC0(page)) {
				index += HPAGE_PMD_NR - 1;
				i += HPAGE_PMD_NR - 1;
				/*
				 * 'end' is in the middle of THP. Don't
				 * invalidate the page as the part outside of
				 * 'end' could be still useful.
				 */
				if (index > end) {
					FUNC17(page);
					continue;
				}

				/* Take a pin outside pagevec */
				FUNC5(page);

				/*
				 * Drop extra pins before trying to invalidate
				 * the huge page.
				 */
				FUNC14(&pvec);
				FUNC13(&pvec);
			}

			ret = FUNC7(page);
			FUNC17(page);
			/*
			 * Invalidation is a hint that the page is no longer
			 * of interest and try to speed up its reclaim.
			 */
			if (!ret)
				FUNC4(page);
			if (FUNC0(page))
				FUNC15(page);
			count += ret;
		}
		FUNC14(&pvec);
		FUNC13(&pvec);
		FUNC3();
		index++;
	}
	return count;
}