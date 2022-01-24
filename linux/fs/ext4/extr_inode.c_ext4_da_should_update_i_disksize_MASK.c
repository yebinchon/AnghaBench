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
struct page {TYPE_1__* mapping; } ;
struct inode {unsigned long i_blkbits; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *page,
					    unsigned long offset)
{
	struct buffer_head *bh;
	struct inode *inode = page->mapping->host;
	unsigned int idx;
	int i;

	bh = FUNC3(page);
	idx = offset >> inode->i_blkbits;

	for (i = 0; i < idx; i++)
		bh = bh->b_this_page;

	if (!FUNC1(bh) || (FUNC0(bh)) || FUNC2(bh))
		return 0;
	return 1;
}