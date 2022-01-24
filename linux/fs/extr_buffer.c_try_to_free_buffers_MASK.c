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
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct page *page)
{
	struct address_space * const mapping = page->mapping;
	struct buffer_head *buffers_to_free = NULL;
	int ret = 0;

	FUNC0(!FUNC1(page));
	if (FUNC2(page))
		return 0;

	if (mapping == NULL) {		/* can this still happen? */
		ret = FUNC4(page, &buffers_to_free);
		goto out;
	}

	FUNC6(&mapping->private_lock);
	ret = FUNC4(page, &buffers_to_free);

	/*
	 * If the filesystem writes its buffers by hand (eg ext3)
	 * then we can have clean buffers against a dirty page.  We
	 * clean the page here; otherwise the VM will never notice
	 * that the filesystem did any IO at all.
	 *
	 * Also, during truncate, discard_buffer will have marked all
	 * the page's buffers clean.  We discover that here and clean
	 * the page also.
	 *
	 * private_lock must be held over this entire operation in order
	 * to synchronise against __set_page_dirty_buffers and prevent the
	 * dirty bit from being lost.
	 */
	if (ret)
		FUNC3(page);
	FUNC7(&mapping->private_lock);
out:
	if (buffers_to_free) {
		struct buffer_head *bh = buffers_to_free;

		do {
			struct buffer_head *next = bh->b_this_page;
			FUNC5(bh);
			bh = next;
		} while (bh != buffers_to_free);
	}
	return ret;
}