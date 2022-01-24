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
struct page {struct address_space* mapping; int /*<<< orphan*/  index; } ;
struct address_space {int /*<<< orphan*/  i_pages; int /*<<< orphan*/  nrpages; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct page* FUNC6 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct page*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 unsigned int FUNC11 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct address_space *dmap,
			   struct address_space *smap)
{
	struct pagevec pvec;
	unsigned int i, n;
	pgoff_t index = 0;

	FUNC10(&pvec);
repeat:
	n = FUNC11(&pvec, smap, &index);
	if (!n)
		return;

	for (i = 0; i < FUNC9(&pvec); i++) {
		struct page *page = pvec.pages[i], *dpage;
		pgoff_t offset = page->index;

		FUNC7(page);
		dpage = FUNC6(dmap, offset);
		if (dpage) {
			/* overwrite existing page in the destination cache */
			FUNC1(FUNC0(dpage));
			FUNC8(dpage, page, 0);
			FUNC15(dpage);
			FUNC13(dpage);
			/* Do we not need to remove page from smap here? */
		} else {
			struct page *p;

			/* move the page to the destination cache */
			FUNC16(&smap->i_pages);
			p = FUNC2(&smap->i_pages, offset);
			FUNC1(page != p);
			smap->nrpages--;
			FUNC17(&smap->i_pages);

			FUNC16(&dmap->i_pages);
			p = FUNC4(&dmap->i_pages, offset, page, GFP_NOFS);
			if (FUNC14(p)) {
				/* Probably -ENOMEM */
				page->mapping = NULL;
				FUNC13(page);
			} else {
				page->mapping = dmap;
				dmap->nrpages++;
				if (FUNC0(page))
					FUNC3(&dmap->i_pages, offset,
							PAGECACHE_TAG_DIRTY);
			}
			FUNC17(&dmap->i_pages);
		}
		FUNC15(page);
	}
	FUNC12(&pvec);
	FUNC5();

	goto repeat;
}