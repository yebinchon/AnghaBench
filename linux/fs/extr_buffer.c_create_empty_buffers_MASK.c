#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct buffer_head* FUNC2 (struct page*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct page *page,
			unsigned long blocksize, unsigned long b_state)
{
	struct buffer_head *bh, *head, *tail;

	head = FUNC2(page, blocksize, true);
	bh = head;
	do {
		bh->b_state |= b_state;
		tail = bh;
		bh = bh->b_this_page;
	} while (bh);
	tail->b_this_page = head;

	FUNC6(&page->mapping->private_lock);
	if (FUNC1(page) || FUNC0(page)) {
		bh = head;
		do {
			if (FUNC0(page))
				FUNC4(bh);
			if (FUNC1(page))
				FUNC5(bh);
			bh = bh->b_this_page;
		} while (bh != head);
	}
	FUNC3(page, head);
	FUNC7(&page->mapping->private_lock);
}