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
typedef  unsigned long pgoff_t ;

/* Variables and functions */
 unsigned long MAX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct page*) ; 
 unsigned long FUNC2 (struct page*) ; 
 unsigned long FUNC3 (struct page*) ; 
 unsigned long FUNC4 (struct page*) ; 

pgoff_t FUNC5(struct page *page)
{
	struct page *page_head = FUNC1(page);
	pgoff_t index = FUNC3(page_head);
	unsigned long compound_idx;

	if (!FUNC0(page_head))
		return FUNC3(page);

	if (FUNC2(page_head) >= MAX_ORDER)
		compound_idx = FUNC4(page) - FUNC4(page_head);
	else
		compound_idx = page - page_head;

	return (index << FUNC2(page_head)) + compound_idx;
}