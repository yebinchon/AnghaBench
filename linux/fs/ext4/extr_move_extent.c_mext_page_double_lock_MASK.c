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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  struct page* pgoff_t ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct page* FUNC1 (struct address_space*,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode1, struct inode *inode2,
		      pgoff_t index1, pgoff_t index2, struct page *page[2])
{
	struct address_space *mapping[2];
	unsigned fl = AOP_FLAG_NOFS;

	FUNC0(!inode1 || !inode2);
	if (inode1 < inode2) {
		mapping[0] = inode1->i_mapping;
		mapping[1] = inode2->i_mapping;
	} else {
		FUNC3(index1, index2);
		mapping[0] = inode2->i_mapping;
		mapping[1] = inode1->i_mapping;
	}

	page[0] = FUNC1(mapping[0], index1, fl);
	if (!page[0])
		return -ENOMEM;

	page[1] = FUNC1(mapping[1], index2, fl);
	if (!page[1]) {
		FUNC4(page[0]);
		FUNC2(page[0]);
		return -ENOMEM;
	}
	/*
	 * grab_cache_page_write_begin() may not wait on page's writeback if
	 * BDI not demand that. But it is reasonable to be very conservative
	 * here and explicitly wait on page's writeback
	 */
	FUNC5(page[0]);
	FUNC5(page[1]);
	if (inode1 > inode2)
		FUNC3(page[0], page[1]);

	return 0;
}