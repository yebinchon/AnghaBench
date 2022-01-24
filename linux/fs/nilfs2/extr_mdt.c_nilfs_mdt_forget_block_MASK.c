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
struct page {int dummy; } ;
struct inode {unsigned long i_blkbits; int /*<<< orphan*/  i_mapping; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct page*,unsigned long) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct inode *inode, unsigned long block)
{
	pgoff_t index = (pgoff_t)block >>
		(PAGE_SHIFT - inode->i_blkbits);
	struct page *page;
	unsigned long first_block;
	int ret = 0;
	int still_dirty;

	page = FUNC1(inode->i_mapping, index);
	if (!page)
		return -ENOENT;

	FUNC8(page);

	first_block = (unsigned long)index <<
		(PAGE_SHIFT - inode->i_blkbits);
	if (FUNC5(page)) {
		struct buffer_head *bh;

		bh = FUNC4(page, block - first_block);
		FUNC3(bh);
	}
	still_dirty = FUNC0(page);
	FUNC7(page);
	FUNC6(page);

	if (still_dirty ||
	    FUNC2(inode->i_mapping, index, index) != 0)
		ret = -EBUSY;
	return ret;
}