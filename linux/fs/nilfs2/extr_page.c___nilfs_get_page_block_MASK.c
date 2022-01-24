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
struct buffer_head {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int,unsigned long) ; 
 struct buffer_head* FUNC1 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC5(struct page *page, unsigned long block, pgoff_t index,
		       int blkbits, unsigned long b_state)

{
	unsigned long first_block;
	struct buffer_head *bh;

	if (!FUNC2(page))
		FUNC0(page, 1 << blkbits, b_state);

	first_block = (unsigned long)index << (PAGE_SHIFT - blkbits);
	bh = FUNC1(page, block - first_block);

	FUNC3(bh);
	FUNC4(bh);
	return bh;
}