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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct page {int index; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *,unsigned int,unsigned int,struct page*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page**,int) ; 

__attribute__((used)) static void FUNC5(struct inode *inode, loff_t start,
				     loff_t end, struct page **pages,
				     int numpages, u64 phys, handle_t *handle)
{
	int i;
	struct page *page;
	unsigned int from, to = PAGE_SIZE;
	struct super_block *sb = inode->i_sb;

	FUNC0(!FUNC3(FUNC1(sb)));

	if (numpages == 0)
		goto out;

	to = PAGE_SIZE;
	for(i = 0; i < numpages; i++) {
		page = pages[i];

		from = start & (PAGE_SIZE - 1);
		if ((end >> PAGE_SHIFT) == page->index)
			to = end & (PAGE_SIZE - 1);

		FUNC0(from > PAGE_SIZE);
		FUNC0(to > PAGE_SIZE);

		FUNC2(inode, handle, from, to, page, 1,
					 &phys);

		start = (page->index + 1) << PAGE_SHIFT;
	}
out:
	if (pages)
		FUNC4(pages, numpages);
}