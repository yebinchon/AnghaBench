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
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(handle_t *handle,
					    struct page *page,
					    unsigned from, unsigned to)
{
	unsigned int block_start = 0, block_end;
	struct buffer_head *head, *bh;

	bh = head = FUNC5(page);
	do {
		block_end = block_start + bh->b_size;
		if (FUNC1(bh)) {
			if (block_end > from && block_start < to) {
				if (!FUNC0(page)) {
					unsigned start, size;

					start = FUNC3(from, block_start);
					size = FUNC4(to, block_end) - start;

					FUNC7(page, start, size);
					FUNC6(handle, bh);
				}
				FUNC2(bh);
			}
		}
		block_start = block_end;
		bh = bh->b_this_page;
	} while (bh != head);
}