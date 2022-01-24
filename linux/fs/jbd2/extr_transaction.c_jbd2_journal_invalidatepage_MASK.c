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
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 struct buffer_head* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 

int FUNC10(journal_t *journal,
				struct page *page,
				unsigned int offset,
				unsigned int length)
{
	struct buffer_head *head, *bh, *next;
	unsigned int stop = offset + length;
	unsigned int curr_off = 0;
	int partial_page = (offset || length < PAGE_SIZE);
	int may_free = 1;
	int ret = 0;

	if (!FUNC3(page))
		FUNC0();
	if (!FUNC7(page))
		return 0;

	FUNC1(stop > PAGE_SIZE || stop < length);

	/* We will potentially be playing with lists other than just the
	 * data lists (especially for journaled data mode), so be
	 * cautious in our locking. */

	head = bh = FUNC6(page);
	do {
		unsigned int next_off = curr_off + bh->b_size;
		next = bh->b_this_page;

		if (next_off > stop)
			return 0;

		if (offset <= curr_off) {
			/* This block is wholly outside the truncation point */
			FUNC5(bh);
			ret = FUNC4(journal, bh, partial_page);
			FUNC9(bh);
			if (ret < 0)
				return ret;
			may_free &= ret;
		}
		curr_off = next_off;
		bh = next;

	} while (bh != head);

	if (!partial_page) {
		if (may_free && FUNC8(page))
			FUNC2(!FUNC7(page));
	}
	return 0;
}