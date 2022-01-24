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
struct page {struct address_space* mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 

struct page *FUNC7(struct inode *inode, pgoff_t index,
							bool for_write)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
repeat:
	page = FUNC3(inode, index, 0, for_write);
	if (FUNC1(page))
		return page;

	/* wait for read completion */
	FUNC5(page);
	if (FUNC6(page->mapping != mapping)) {
		FUNC4(page, 1);
		goto repeat;
	}
	if (FUNC6(!FUNC2(page))) {
		FUNC4(page, 1);
		return FUNC0(-EIO);
	}
	return page;
}