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
struct writeback_control {int /*<<< orphan*/  for_reclaim; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct blk_plug {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  enum page_type { ____Placeholder_page_type } page_type ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 long LONG_MAX ; 
 int /*<<< orphan*/  META ; 
 struct address_space* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ ULONG_MAX ; 
 scalar_t__ FUNC2 (struct page*,struct writeback_control*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 
 int FUNC11 (struct pagevec*,struct address_space*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

long FUNC15(struct f2fs_sb_info *sbi, enum page_type type,
				long nr_to_write, enum iostat_type io_type)
{
	struct address_space *mapping = FUNC0(sbi);
	pgoff_t index = 0, prev = ULONG_MAX;
	struct pagevec pvec;
	long nwritten = 0;
	int nr_pages;
	struct writeback_control wbc = {
		.for_reclaim = 0,
	};
	struct blk_plug plug;

	FUNC10(&pvec);

	FUNC4(&plug);

	while ((nr_pages = FUNC11(&pvec, mapping, &index,
				PAGECACHE_TAG_DIRTY))) {
		int i;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			if (prev == ULONG_MAX)
				prev = page->index - 1;
			if (nr_to_write != LONG_MAX && page->index != prev + 1) {
				FUNC12(&pvec);
				goto stop;
			}

			FUNC9(page);

			if (FUNC13(page->mapping != mapping)) {
continue_unlock:
				FUNC14(page);
				continue;
			}
			if (!FUNC1(page)) {
				/* someone wrote it for us */
				goto continue_unlock;
			}

			FUNC8(page, META, true, true);

			if (!FUNC5(page))
				goto continue_unlock;

			if (FUNC2(page, &wbc, io_type)) {
				FUNC14(page);
				break;
			}
			nwritten++;
			prev = page->index;
			if (FUNC13(nwritten >= nr_to_write))
				break;
		}
		FUNC12(&pvec);
		FUNC6();
	}
stop:
	if (nwritten)
		FUNC7(sbi, type);

	FUNC3(&plug);

	return nwritten;
}