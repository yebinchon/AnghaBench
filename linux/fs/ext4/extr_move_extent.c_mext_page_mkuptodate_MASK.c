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
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef  int sector_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_BUF_PER_PAGE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct inode*) ; 
 struct buffer_head* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC17(struct page *page, unsigned from, unsigned to)
{
	struct inode *inode = page->mapping->host;
	sector_t block;
	struct buffer_head *bh, *head, *arr[MAX_BUF_PER_PAGE];
	unsigned int blocksize, block_start, block_end;
	int i, err,  nr = 0, partial = 0;
	FUNC0(!FUNC1(page));
	FUNC0(FUNC3(page));

	if (FUNC2(page))
		return 0;

	blocksize = FUNC12(inode);
	if (!FUNC14(page))
		FUNC10(page, blocksize, 0);

	head = FUNC13(page);
	block = (sector_t)page->index << (PAGE_SHIFT - inode->i_blkbits);
	for (bh = head, block_start = 0; bh != head || !block_start;
	     block++, block_start = block_end, bh = bh->b_this_page) {
		block_end = block_start + blocksize;
		if (block_end <= from || block_start >= to) {
			if (!FUNC9(bh))
				partial = 1;
			continue;
		}
		if (FUNC9(bh))
			continue;
		if (!FUNC8(bh)) {
			err = FUNC11(inode, block, bh, 0);
			if (err) {
				FUNC4(page);
				return err;
			}
			if (!FUNC8(bh)) {
				FUNC16(page, block_start, blocksize);
				FUNC15(bh);
				continue;
			}
		}
		FUNC0(nr >= MAX_BUF_PER_PAGE);
		arr[nr++] = bh;
	}
	/* No io required */
	if (!nr)
		goto out;

	for (i = 0; i < nr; i++) {
		bh = arr[i];
		if (!FUNC7(bh)) {
			err = FUNC6(bh);
			if (err)
				return err;
		}
	}
out:
	if (!partial)
		FUNC5(page);
	return 0;
}