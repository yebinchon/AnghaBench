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
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  xas ; 
 struct page* FUNC8 (int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct page*) ; 

struct page *FUNC12(struct address_space *mapping, pgoff_t offset)
{
	FUNC0(xas, &mapping->i_pages, offset);
	struct page *page;

	FUNC4();
repeat:
	FUNC10(&xas);
	page = FUNC8(&xas);
	if (FUNC11(&xas, page))
		goto repeat;
	/*
	 * A shadow entry of a recently evicted page, or a swap entry from
	 * shmem/tmpfs.  Return it without attempting to raise page count.
	 */
	if (!page || FUNC7(page))
		goto out;

	if (!FUNC2(page))
		goto repeat;

	/*
	 * Has the page moved or been split?
	 * This is part of the lockless pagecache protocol. See
	 * include/linux/pagemap.h for details.
	 */
	if (FUNC6(page != FUNC9(&xas))) {
		FUNC3(page);
		goto repeat;
	}
	page = FUNC1(page, offset);
out:
	FUNC5();

	return page;
}