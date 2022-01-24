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
struct gfs2_sbd {int dummy; } ;
struct buffer_head {unsigned long b_size; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct gfs2_sbd* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned int offset,
				unsigned int length)
{
	struct gfs2_sbd *sdp = FUNC2(page->mapping->host);
	unsigned int stop = offset + length;
	int partial_page = (offset || length < PAGE_SIZE);
	struct buffer_head *bh, *head;
	unsigned long pos = 0;

	FUNC0(!FUNC3(page));
	if (!partial_page)
		FUNC1(page);
	if (!FUNC6(page))
		goto out;

	bh = head = FUNC5(page);
	do {
		if (pos + bh->b_size > stop)
			return;

		if (offset <= pos)
			FUNC4(sdp, bh);
		pos += bh->b_size;
		bh = bh->b_this_page;
	} while (bh != head);
out:
	if (!partial_page)
		FUNC7(page, 0);
}