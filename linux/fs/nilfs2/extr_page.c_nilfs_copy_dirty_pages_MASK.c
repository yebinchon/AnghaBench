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
struct page {int /*<<< orphan*/  index; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct page*,char*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 unsigned int FUNC9 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

int FUNC16(struct address_space *dmap,
			   struct address_space *smap)
{
	struct pagevec pvec;
	unsigned int i;
	pgoff_t index = 0;
	int err = 0;

	FUNC10(&pvec);
repeat:
	if (!FUNC11(&pvec, smap, &index, PAGECACHE_TAG_DIRTY))
		return 0;

	for (i = 0; i < FUNC9(&pvec); i++) {
		struct page *page = pvec.pages[i], *dpage;

		FUNC6(page);
		if (FUNC14(!FUNC1(page)))
			FUNC0(page, "inconsistent dirty state");

		dpage = FUNC4(dmap, page->index);
		if (FUNC14(!dpage)) {
			/* No empty page is added to the page cache */
			err = -ENOMEM;
			FUNC15(page);
			break;
		}
		if (FUNC14(!FUNC8(page)))
			FUNC0(page,
				       "found empty page in dat page cache");

		FUNC7(dpage, page, 1);
		FUNC2(dpage);

		FUNC15(dpage);
		FUNC13(dpage);
		FUNC15(page);
	}
	FUNC12(&pvec);
	FUNC3();

	if (FUNC5(!err))
		goto repeat;
	return err;
}