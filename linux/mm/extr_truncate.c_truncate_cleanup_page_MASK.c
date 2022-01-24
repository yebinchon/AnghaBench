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
struct page {int /*<<< orphan*/  index; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(struct address_space *mapping, struct page *page)
{
	if (FUNC5(page)) {
		pgoff_t nr = FUNC1(page) ? HPAGE_PMD_NR : 1;
		FUNC6(mapping, page->index, nr, false);
	}

	if (FUNC4(page))
		FUNC3(page, 0, PAGE_SIZE);

	/*
	 * Some filesystems seem to re-dirty the page even after
	 * the VM has canceled the dirty bit (eg ext3 journaling).
	 * Hence dirty accounting check is placed after invalidation.
	 */
	FUNC2(page);
	FUNC0(page);
}