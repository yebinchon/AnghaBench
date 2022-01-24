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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * wb_sync_req; } ;
typedef  scalar_t__ pgoff_t ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 size_t NODE ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 int FUNC4 (struct page*,int,int*,struct writeback_control*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,size_t,int,int) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct pagevec*) ; 
 int FUNC20 (struct pagevec*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 

int FUNC27(struct f2fs_sb_info *sbi,
				struct writeback_control *wbc,
				bool do_balance, enum iostat_type io_type)
{
	pgoff_t index;
	struct pagevec pvec;
	int step = 0;
	int nwritten = 0;
	int ret = 0;
	int nr_pages, done = 0;

	FUNC19(&pvec);

next_step:
	index = 0;

	while (!done && (nr_pages = FUNC20(&pvec,
			FUNC2(sbi), &index, PAGECACHE_TAG_DIRTY))) {
		int i;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];
			bool submitted = false;
			bool may_dirty = true;

			/* give a priority to WB_SYNC threads */
			if (FUNC5(&sbi->wb_sync_req[NODE]) &&
					wbc->sync_mode == WB_SYNC_NONE) {
				done = 1;
				break;
			}

			/*
			 * flushing sequence with step:
			 * 0. indirect nodes
			 * 1. dentry dnodes
			 * 2. file dnodes
			 */
			if (step == 0 && FUNC0(page))
				continue;
			if (step == 1 && (!FUNC0(page) ||
						FUNC15(page)))
				continue;
			if (step == 2 && (!FUNC0(page) ||
						!FUNC15(page)))
				continue;
lock_node:
			if (wbc->sync_mode == WB_SYNC_ALL)
				FUNC18(page);
			else if (!FUNC24(page))
				continue;

			if (FUNC25(page->mapping != FUNC2(sbi))) {
continue_unlock:
				FUNC26(page);
				continue;
			}

			if (!FUNC3(page)) {
				/* someone wrote it for us */
				goto continue_unlock;
			}

			/* flush inline_data */
			if (FUNC16(page)) {
				FUNC6(page);
				FUNC26(page);
				FUNC13(sbi, FUNC14(page));
				goto lock_node;
			}

			/* flush dirty inode */
			if (FUNC1(page) && may_dirty) {
				may_dirty = false;
				if (FUNC12(page))
					goto lock_node;
			}

			FUNC11(page, NODE, true, true);

			if (!FUNC7(page))
				goto continue_unlock;

			FUNC23(page, 0);
			FUNC22(page, 0);

			ret = FUNC4(page, false, &submitted,
						wbc, do_balance, io_type, NULL);
			if (ret)
				FUNC26(page);
			else if (submitted)
				nwritten++;

			if (--wbc->nr_to_write == 0)
				break;
		}
		FUNC21(&pvec);
		FUNC8();

		if (wbc->nr_to_write == 0) {
			step = 2;
			break;
		}
	}

	if (step < 2) {
		if (!FUNC17(sbi, SBI_CP_DISABLED) &&
				wbc->sync_mode == WB_SYNC_NONE && step == 1)
			goto out;
		step++;
		goto next_step;
	}
out:
	if (nwritten)
		FUNC10(sbi, NODE);

	if (FUNC25(FUNC9(sbi)))
		return -EIO;
	return ret;
}