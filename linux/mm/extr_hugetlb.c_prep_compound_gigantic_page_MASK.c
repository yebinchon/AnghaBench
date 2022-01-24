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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned int order)
{
	int i;
	int nr_pages = 1 << order;
	struct page *p = page + 1;

	/* we rely on prep_new_huge_page to set the destructor */
	FUNC6(page, order);
	FUNC0(page);
	FUNC1(page);
	for (i = 1; i < nr_pages; i++, p = FUNC4(p, page, i)) {
		/*
		 * For gigantic hugepages allocated through bootmem at
		 * boot, it's safer to be consistent with the not-gigantic
		 * hugepages and clear the PG_reserved bit from all tail pages
		 * too.  Otherwse drivers using get_user_pages() to access tail
		 * pages may get the reference counting wrong if they see
		 * PG_reserved set on a tail page (despite the head page not
		 * having PG_reserved set).  Enforcing this consistency between
		 * head and tail pages allows drivers to optimize away a check
		 * on the head page when they need know if put_page() is needed
		 * after get_user_pages().
		 */
		FUNC0(p);
		FUNC7(p, 0);
		FUNC5(p, page);
	}
	FUNC2(FUNC3(page), -1);
}