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
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int /*<<< orphan*/  host; int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 struct address_space* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

int FUNC12(struct page *page)
{
	int newly_dirty;
	struct address_space *mapping = FUNC6(page);

	if (FUNC10(!mapping))
		return !FUNC0(page);

	FUNC8(&mapping->private_lock);
	if (FUNC5(page)) {
		struct buffer_head *head = FUNC4(page);
		struct buffer_head *bh = head;

		do {
			FUNC7(bh);
			bh = bh->b_this_page;
		} while (bh != head);
	}
	/*
	 * Lock out page->mem_cgroup migration to keep PageDirty
	 * synchronized with per-memcg dirty page counters.
	 */
	FUNC3(page);
	newly_dirty = !FUNC0(page);
	FUNC9(&mapping->private_lock);

	if (newly_dirty)
		FUNC2(page, mapping, 1);

	FUNC11(page);

	if (newly_dirty)
		FUNC1(mapping->host, I_DIRTY_PAGES);

	return newly_dirty;
}