#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pagevec {scalar_t__ nr; struct page** pages; } ;
struct page {int index; } ;
struct inode {unsigned int i_blkbits; TYPE_1__* i_mapping; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef  unsigned int sector_t ;
typedef  int pgoff_t ;
struct TYPE_2__ {scalar_t__ nrpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,struct page**) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 unsigned int FUNC6 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC7 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

unsigned long FUNC10(struct inode *inode,
					    sector_t start_blk,
					    sector_t *blkoff)
{
	unsigned int i;
	pgoff_t index;
	unsigned int nblocks_in_page;
	unsigned long length = 0;
	sector_t b;
	struct pagevec pvec;
	struct page *page;

	if (inode->i_mapping->nrpages == 0)
		return 0;

	index = start_blk >> (PAGE_SHIFT - inode->i_blkbits);
	nblocks_in_page = 1U << (PAGE_SHIFT - inode->i_blkbits);

	FUNC7(&pvec);

repeat:
	pvec.nr = FUNC2(inode->i_mapping, index, PAGEVEC_SIZE,
					pvec.pages);
	if (pvec.nr == 0)
		return length;

	if (length > 0 && pvec.pages[0]->index > index)
		goto out;

	b = pvec.pages[0]->index << (PAGE_SHIFT - inode->i_blkbits);
	i = 0;
	do {
		page = pvec.pages[i];

		FUNC3(page);
		if (FUNC5(page)) {
			struct buffer_head *bh, *head;

			bh = head = FUNC4(page);
			do {
				if (b < start_blk)
					continue;
				if (FUNC0(bh)) {
					if (length == 0)
						*blkoff = b;
					length++;
				} else if (length > 0) {
					goto out_locked;
				}
			} while (++b, bh = bh->b_this_page, bh != head);
		} else {
			if (length > 0)
				goto out_locked;

			b += nblocks_in_page;
		}
		FUNC9(page);

	} while (++i < FUNC6(&pvec));

	index = page->index + 1;
	FUNC8(&pvec);
	FUNC1();
	goto repeat;

out_locked:
	FUNC9(page);
out:
	FUNC8(&pvec);
	return length;
}