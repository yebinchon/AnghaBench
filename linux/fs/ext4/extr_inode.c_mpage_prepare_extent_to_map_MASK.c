#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xa_mark_t ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct TYPE_6__ {scalar_t__ m_len; } ;
struct mpage_da_data {scalar_t__ first_page; scalar_t__ last_page; scalar_t__ next_page; TYPE_3__ map; TYPE_2__* wbc; TYPE_1__* inode; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int ext4_lblk_t ;
struct TYPE_5__ {long nr_to_write; scalar_t__ sync_mode; scalar_t__ tagged_writepages; } ;
struct TYPE_4__ {int i_blkbits; struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGECACHE_TAG_TOWRITE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct mpage_da_data*,struct buffer_head*,struct buffer_head*,int) ; 
 struct buffer_head* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct pagevec*) ; 
 unsigned int FUNC8 (struct pagevec*,struct address_space*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct mpage_da_data *mpd)
{
	struct address_space *mapping = mpd->inode->i_mapping;
	struct pagevec pvec;
	unsigned int nr_pages;
	long left = mpd->wbc->nr_to_write;
	pgoff_t index = mpd->first_page;
	pgoff_t end = mpd->last_page;
	xa_mark_t tag;
	int i, err = 0;
	int blkbits = mpd->inode->i_blkbits;
	ext4_lblk_t lblk;
	struct buffer_head *head;

	if (mpd->wbc->sync_mode == WB_SYNC_ALL || mpd->wbc->tagged_writepages)
		tag = PAGECACHE_TAG_TOWRITE;
	else
		tag = PAGECACHE_TAG_DIRTY;

	FUNC7(&pvec);
	mpd->map.m_len = 0;
	mpd->next_page = index;
	while (index <= end) {
		nr_pages = FUNC8(&pvec, mapping, &index, end,
				tag);
		if (nr_pages == 0)
			goto out;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			/*
			 * Accumulated enough dirty pages? This doesn't apply
			 * to WB_SYNC_ALL mode. For integrity sync we have to
			 * keep going because someone may be concurrently
			 * dirtying pages, and we might have synced a lot of
			 * newly appeared dirty pages, but have not synced all
			 * of the old dirty pages.
			 */
			if (mpd->wbc->sync_mode == WB_SYNC_NONE && left <= 0)
				goto out;

			/* If we can't merge this page, we are done. */
			if (mpd->map.m_len > 0 && mpd->next_page != page->index)
				goto out;

			FUNC4(page);
			/*
			 * If the page is no longer dirty, or its mapping no
			 * longer corresponds to inode we are writing (which
			 * means it has been truncated or invalidated), or the
			 * page is already under writeback and we are not doing
			 * a data integrity writeback, skip the page
			 */
			if (!FUNC1(page) ||
			    (FUNC2(page) &&
			     (mpd->wbc->sync_mode == WB_SYNC_NONE)) ||
			    FUNC10(page->mapping != mapping)) {
				FUNC11(page);
				continue;
			}

			FUNC12(page);
			FUNC0(FUNC2(page));

			if (mpd->map.m_len == 0)
				mpd->first_page = page->index;
			mpd->next_page = page->index + 1;
			/* Add all dirty buffers to mpd */
			lblk = ((ext4_lblk_t)page->index) <<
				(PAGE_SHIFT - blkbits);
			head = FUNC6(page);
			err = FUNC5(mpd, head, head, lblk);
			if (err <= 0)
				goto out;
			err = 0;
			left--;
		}
		FUNC9(&pvec);
		FUNC3();
	}
	return 0;
out:
	FUNC9(&pvec);
	return err;
}