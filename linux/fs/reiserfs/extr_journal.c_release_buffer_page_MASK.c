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
struct page {int /*<<< orphan*/  mapping; } ;
struct buffer_head {struct page* b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct buffer_head *bh)
{
	struct page *page = bh->b_page;
	if (!page->mapping && FUNC4(page)) {
		FUNC0(page);
		FUNC1(bh);
		if (!page->mapping)
			FUNC3(page);
		FUNC5(page);
		FUNC2(page);
	} else {
		FUNC1(bh);
	}
}