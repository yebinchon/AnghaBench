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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct inode *inode, loff_t from, loff_t to)
{
	int bsize = FUNC2(inode);
	loff_t rounded_from;
	struct page *page;
	pgoff_t index;

	FUNC0(to > inode->i_size);

	if (from >= to || bsize == PAGE_SIZE)
		return;
	/* Page straddling @from will not have any hole block created? */
	rounded_from = FUNC5(from, bsize);
	if (to <= rounded_from || !(rounded_from & (PAGE_SIZE - 1)))
		return;

	index = from >> PAGE_SHIFT;
	page = FUNC1(inode->i_mapping, index);
	/* Page not cached? Nothing to do */
	if (!page)
		return;
	/*
	 * See clear_page_dirty_for_io() for details why set_page_dirty()
	 * is needed.
	 */
	if (FUNC3(page))
		FUNC6(page);
	FUNC7(page);
	FUNC4(page);
}