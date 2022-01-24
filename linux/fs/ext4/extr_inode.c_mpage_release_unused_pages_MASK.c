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
struct mpage_da_data {scalar_t__ first_page; scalar_t__ next_page; struct inode* inode; } ;
struct inode {int i_blkbits; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,int) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*) ; 
 int FUNC9 (struct pagevec*,struct address_space*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static void FUNC12(struct mpage_da_data *mpd,
				       bool invalidate)
{
	int nr_pages, i;
	pgoff_t index, end;
	struct pagevec pvec;
	struct inode *inode = mpd->inode;
	struct address_space *mapping = inode->i_mapping;

	/* This is necessary when next_page == 0. */
	if (mpd->first_page >= mpd->next_page)
		return;

	index = mpd->first_page;
	end   = mpd->next_page - 1;
	if (invalidate) {
		ext4_lblk_t start, last;
		start = index << (PAGE_SHIFT - inode->i_blkbits);
		last = end << (PAGE_SHIFT - inode->i_blkbits);
		FUNC6(inode, start, last - start + 1);
	}

	FUNC8(&pvec);
	while (index <= end) {
		nr_pages = FUNC9(&pvec, mapping, &index, end);
		if (nr_pages == 0)
			break;
		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			FUNC0(!FUNC2(page));
			FUNC0(FUNC3(page));
			if (invalidate) {
				if (FUNC7(page))
					FUNC5(page);
				FUNC4(page, 0, PAGE_SIZE);
				FUNC1(page);
			}
			FUNC11(page);
		}
		FUNC10(&pvec);
	}
}