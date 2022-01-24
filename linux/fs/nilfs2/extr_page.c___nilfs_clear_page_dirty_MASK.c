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
struct page {int /*<<< orphan*/  flags; struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PG_dirty ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct page *page)
{
	struct address_space *mapping = page->mapping;

	if (mapping) {
		FUNC5(&mapping->i_pages);
		if (FUNC4(PG_dirty, &page->flags)) {
			FUNC1(&mapping->i_pages, FUNC3(page),
					     PAGECACHE_TAG_DIRTY);
			FUNC6(&mapping->i_pages);
			return FUNC2(page);
		}
		FUNC6(&mapping->i_pages);
		return 0;
	}
	return FUNC0(page);
}