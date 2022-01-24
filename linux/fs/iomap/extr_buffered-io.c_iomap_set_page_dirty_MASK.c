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
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int
FUNC7(struct page *page)
{
	struct address_space *mapping = FUNC4(page);
	int newly_dirty;

	if (FUNC5(!mapping))
		return !FUNC0(page);

	/*
	 * Lock out page->mem_cgroup migration to keep PageDirty
	 * synchronized with per-memcg dirty page counters.
	 */
	FUNC3(page);
	newly_dirty = !FUNC0(page);
	if (newly_dirty)
		FUNC2(page, mapping, 0);
	FUNC6(page);

	if (newly_dirty)
		FUNC1(mapping->host, I_DIRTY_PAGES);
	return newly_dirty;
}