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
struct inode {int i_blkbits; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct buffer_head* FUNC0 (struct page*,unsigned long,unsigned long,int,unsigned long) ; 
 struct page* FUNC1 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

struct buffer_head *FUNC5(struct inode *inode,
				      struct address_space *mapping,
				      unsigned long blkoff,
				      unsigned long b_state)
{
	int blkbits = inode->i_blkbits;
	pgoff_t index = blkoff >> (PAGE_SHIFT - blkbits);
	struct page *page;
	struct buffer_head *bh;

	page = FUNC1(mapping, index);
	if (FUNC3(!page))
		return NULL;

	bh = FUNC0(page, blkoff, index, blkbits, b_state);
	if (FUNC3(!bh)) {
		FUNC4(page);
		FUNC2(page);
		return NULL;
	}
	return bh;
}