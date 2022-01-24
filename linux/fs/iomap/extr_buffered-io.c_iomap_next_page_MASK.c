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
typedef  scalar_t__ u64 ;
struct page {int /*<<< orphan*/  index; int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 struct page* FUNC3 (struct list_head*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static struct page *
FUNC6(struct inode *inode, struct list_head *pages, loff_t pos,
		loff_t length, loff_t *done)
{
	while (!FUNC2(pages)) {
		struct page *page = FUNC3(pages);

		if (FUNC4(page) >= (u64)pos + length)
			break;

		FUNC1(&page->lru);
		if (!FUNC0(page, inode->i_mapping, page->index,
				GFP_NOFS))
			return page;

		/*
		 * If we already have a page in the page cache at index we are
		 * done.  Upper layers don't care if it is uptodate after the
		 * readpages call itself as every page gets checked again once
		 * actually needed.
		 */
		*done += PAGE_SIZE;
		FUNC5(page);
	}

	return NULL;
}