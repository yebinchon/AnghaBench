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
struct writeback_control {int dummy; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ mapping; int /*<<< orphan*/  index; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ nid_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FS_NODE_IO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*,int,int*,struct writeback_control*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 struct page* FUNC19 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct pagevec*) ; 
 int FUNC22 (struct pagevec*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 

int FUNC29(struct f2fs_sb_info *sbi, struct inode *inode,
			struct writeback_control *wbc, bool atomic,
			unsigned int *seq_id)
{
	pgoff_t index;
	struct pagevec pvec;
	int ret = 0;
	struct page *last_page = NULL;
	bool marked = false;
	nid_t ino = inode->i_ino;
	int nr_pages;
	int nwritten = 0;

	if (atomic) {
		last_page = FUNC19(sbi, ino);
		if (FUNC1(last_page))
			return FUNC4(last_page);
	}
retry:
	FUNC21(&pvec);
	index = 0;

	while ((nr_pages = FUNC22(&pvec, FUNC3(sbi), &index,
				PAGECACHE_TAG_DIRTY))) {
		int i;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];
			bool submitted = false;

			if (FUNC27(FUNC9(sbi))) {
				FUNC12(last_page, 0);
				FUNC23(&pvec);
				ret = -EIO;
				goto out;
			}

			if (!FUNC0(page) || !FUNC17(page))
				continue;
			if (FUNC16(page) != ino)
				continue;

			FUNC20(page);

			if (FUNC27(page->mapping != FUNC3(sbi))) {
continue_unlock:
				FUNC28(page);
				continue;
			}
			if (FUNC16(page) != ino)
				goto continue_unlock;

			if (!FUNC5(page) && page != last_page) {
				/* someone wrote it for us */
				goto continue_unlock;
			}

			FUNC15(page, NODE, true, true);

			FUNC25(page, 0);
			FUNC24(page, 0);

			if (!atomic || page == last_page) {
				FUNC25(page, 1);
				if (FUNC2(page)) {
					if (FUNC18(inode,
								FI_DIRTY_INODE))
						FUNC14(inode, page);
					FUNC24(page,
						FUNC11(sbi, ino));
				}
				/*  may be written by other thread */
				if (!FUNC5(page))
					FUNC26(page);
			}

			if (!FUNC7(page))
				goto continue_unlock;

			ret = FUNC6(page, atomic &&
						page == last_page,
						&submitted, wbc, true,
						FS_NODE_IO, seq_id);
			if (ret) {
				FUNC28(page);
				FUNC12(last_page, 0);
				break;
			} else if (submitted) {
				nwritten++;
			}

			if (page == last_page) {
				FUNC12(page, 0);
				marked = true;
				break;
			}
		}
		FUNC23(&pvec);
		FUNC8();

		if (ret || marked)
			break;
	}
	if (!ret && atomic && !marked) {
		FUNC10(sbi, "Retry to write fsync mark: ino=%u, idx=%lx",
			   ino, last_page->index);
		FUNC20(last_page);
		FUNC15(last_page, NODE, true, true);
		FUNC26(last_page);
		FUNC28(last_page);
		goto retry;
	}
out:
	if (nwritten)
		FUNC13(sbi, NULL, NULL, ino, NODE);
	return ret ? -EIO: 0;
}