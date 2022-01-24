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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 

void FUNC6(struct page *page, unsigned int offset,
			  unsigned int length)
{
	struct buffer_head *head, *bh, *next;
	unsigned int curr_off = 0;
	unsigned int stop = length + offset;

	FUNC0(!FUNC1(page));
	if (!FUNC4(page))
		goto out;

	/*
	 * Check for overflow
	 */
	FUNC0(stop > PAGE_SIZE || stop < length);

	head = FUNC3(page);
	bh = head;
	do {
		unsigned int next_off = curr_off + bh->b_size;
		next = bh->b_this_page;

		/*
		 * Are we still fully in range ?
		 */
		if (next_off > stop)
			goto out;

		/*
		 * is this block fully invalidated?
		 */
		if (offset <= curr_off)
			FUNC2(bh);
		curr_off = next_off;
		bh = next;
	} while (bh != head);

	/*
	 * We release buffers only if the entire page is being invalidated.
	 * The get_block cached value has been unconditionally invalidated,
	 * so real IO is not possible anymore.
	 */
	if (length == PAGE_SIZE)
		FUNC5(page, 0);
out:
	return;
}