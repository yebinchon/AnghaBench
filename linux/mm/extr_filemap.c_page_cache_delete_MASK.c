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
struct page {int /*<<< orphan*/ * mapping; int /*<<< orphan*/  index; } ;
struct address_space {unsigned int nrexceptional; unsigned int nrpages; int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC12(struct address_space *mapping,
				   struct page *page, void *shadow)
{
	FUNC4(xas, &mapping->i_pages, page->index);
	unsigned int nr = 1;

	FUNC7(&xas, mapping);

	/* hugetlb pages are represented by a single entry in the xarray */
	if (!FUNC0(page)) {
		FUNC10(&xas, page->index, FUNC6(page));
		nr = FUNC5(page);
	}

	FUNC3(!FUNC1(page), page);
	FUNC3(FUNC2(page), page);
	FUNC3(nr != 1 && shadow, page);

	FUNC11(&xas, shadow);
	FUNC9(&xas);

	page->mapping = NULL;
	/* Leave page->index set: truncation lookup relies upon it */

	if (shadow) {
		mapping->nrexceptional += nr;
		/*
		 * Make sure the nrexceptional update is committed before
		 * the nrpages update so that final truncate racing
		 * with reclaim does not see both counters 0 at the
		 * same time and miss a shadow entry.
		 */
		FUNC8();
	}
	mapping->nrpages -= nr;
}