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
struct page {int /*<<< orphan*/  mapping; int /*<<< orphan*/  index; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MIGRATEPAGE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  xas ; 
 struct page* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct address_space *mapping,
				   struct page *newpage, struct page *page)
{
	FUNC0(xas, &mapping->i_pages, FUNC4(page));
	int expected_count;

	FUNC8(&xas);
	expected_count = 2 + FUNC3(page);
	if (FUNC2(page) != expected_count || FUNC7(&xas) != page) {
		FUNC10(&xas);
		return -EAGAIN;
	}

	if (!FUNC5(page, expected_count)) {
		FUNC10(&xas);
		return -EAGAIN;
	}

	newpage->index = page->index;
	newpage->mapping = page->mapping;

	FUNC1(newpage);

	FUNC9(&xas, newpage);

	FUNC6(page, expected_count - 1);

	FUNC10(&xas);

	return MIGRATEPAGE_SUCCESS;
}