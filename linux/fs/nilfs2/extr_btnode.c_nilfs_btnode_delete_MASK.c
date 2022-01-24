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
struct page {struct address_space* mapping; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void FUNC9(struct buffer_head *bh)
{
	struct address_space *mapping;
	struct page *page = bh->b_page;
	pgoff_t index = FUNC5(page);
	int still_dirty;

	FUNC1(page);
	FUNC3(page);
	FUNC8(page);

	FUNC4(bh);
	still_dirty = FUNC0(page);
	mapping = page->mapping;
	FUNC7(page);
	FUNC6(page);

	if (!still_dirty && mapping)
		FUNC2(mapping, index, index);
}