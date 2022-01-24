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
struct page {int flags; int /*<<< orphan*/ * mapping; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int PAGE_FLAGS_CHECK_AT_PREP ; 
 int PG_active ; 
 int PG_locked ; 
 int PG_lru ; 
 int PG_reclaim ; 
 int PG_referenced ; 
 int PG_uptodate ; 
 int FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct page *page)
{
	if (FUNC1(page) ||
	    page->mapping != NULL ||
	    FUNC0(page) != 1 ||
	    (page->flags & PAGE_FLAGS_CHECK_AT_PREP &
	     ~(1 << PG_locked |
	       1 << PG_referenced |
	       1 << PG_uptodate |
	       1 << PG_lru |
	       1 << PG_active |
	       1 << PG_reclaim))) {
		FUNC2("trying to steal weird page\n");
		FUNC2("  page=%p index=%li flags=%08lx, count=%i, mapcount=%i, mapping=%p\n", page, page->index, page->flags, FUNC0(page), FUNC1(page), page->mapping);
		return 1;
	}
	return 0;
}