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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

void FUNC7(struct page *page,
				     bool *dirty, bool *writeback)
{
	struct buffer_head *head, *bh;
	*dirty = false;
	*writeback = false;

	FUNC0(!FUNC1(page));

	if (!FUNC6(page))
		return;

	if (FUNC2(page))
		*writeback = true;

	head = FUNC5(page);
	bh = head;
	do {
		if (FUNC4(bh))
			*writeback = true;

		if (FUNC3(bh))
			*dirty = true;

		bh = bh->b_this_page;
	} while (bh != head);
}