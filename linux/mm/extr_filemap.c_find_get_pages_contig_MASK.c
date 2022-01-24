#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_8__ {int /*<<< orphan*/  xa_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 TYPE_1__ xas ; 
 struct page* FUNC8 (TYPE_1__*) ; 
 struct page* FUNC9 (TYPE_1__*) ; 
 struct page* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,struct page*) ; 

unsigned FUNC13(struct address_space *mapping, pgoff_t index,
			       unsigned int nr_pages, struct page **pages)
{
	FUNC0(xas, &mapping->i_pages, index);
	struct page *page;
	unsigned int ret = 0;

	if (FUNC6(!nr_pages))
		return 0;

	FUNC4();
	for (page = FUNC8(&xas); page; page = FUNC9(&xas)) {
		if (FUNC12(&xas, page))
			continue;
		/*
		 * If the entry has been swapped out, we can stop looking.
		 * No current caller is looking for DAX entries.
		 */
		if (FUNC7(page))
			break;

		if (!FUNC2(page))
			goto retry;

		/* Has the page moved or been split? */
		if (FUNC6(page != FUNC10(&xas)))
			goto put_page;

		pages[ret] = FUNC1(page, xas.xa_index);
		if (++ret == nr_pages)
			break;
		continue;
put_page:
		FUNC3(page);
retry:
		FUNC11(&xas);
	}
	FUNC5();
	return ret;
}