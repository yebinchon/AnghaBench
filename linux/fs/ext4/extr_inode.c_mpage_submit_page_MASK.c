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
struct page {scalar_t__ index; } ;
struct mpage_da_data {scalar_t__ first_page; TYPE_1__* wbc; int /*<<< orphan*/  io_submit; int /*<<< orphan*/  inode; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_to_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct page*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mpage_da_data *mpd, struct page *page)
{
	int len;
	loff_t size;
	int err;

	FUNC0(page->index != mpd->first_page);
	FUNC1(page);
	/*
	 * We have to be very careful here!  Nothing protects writeback path
	 * against i_size changes and the page can be writeably mapped into
	 * page tables. So an application can be growing i_size and writing
	 * data through mmap while writeback runs. clear_page_dirty_for_io()
	 * write-protects our page in page tables and the page cannot get
	 * written to again until we release page lock. So only after
	 * clear_page_dirty_for_io() we are safe to sample i_size for
	 * ext4_bio_write_page() to zero-out tail of the written page. We rely
	 * on the barrier provided by TestClearPageDirty in
	 * clear_page_dirty_for_io() to make sure i_size is really sampled only
	 * after page tables are updated.
	 */
	size = FUNC4(mpd->inode);
	if (page->index == size >> PAGE_SHIFT &&
	    !FUNC3(mpd->inode))
		len = size & ~PAGE_MASK;
	else
		len = PAGE_SIZE;
	err = FUNC2(&mpd->io_submit, page, len, mpd->wbc, false);
	if (!err)
		mpd->wbc->nr_to_write--;
	mpd->first_page++;

	return err;
}