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
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct pagevec*) ; 
 int FUNC12 (struct pagevec*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static struct page *FUNC16(struct f2fs_sb_info *sbi, nid_t ino)
{
	pgoff_t index;
	struct pagevec pvec;
	struct page *last_page = NULL;
	int nr_pages;

	FUNC11(&pvec);
	index = 0;

	while ((nr_pages = FUNC12(&pvec, FUNC2(sbi), &index,
				PAGECACHE_TAG_DIRTY))) {
		int i;

		for (i = 0; i < nr_pages; i++) {
			struct page *page = pvec.pages[i];

			if (FUNC14(FUNC5(sbi))) {
				FUNC6(last_page, 0);
				FUNC13(&pvec);
				return FUNC0(-EIO);
			}

			if (!FUNC1(page) || !FUNC9(page))
				continue;
			if (FUNC8(page) != ino)
				continue;

			FUNC10(page);

			if (FUNC14(page->mapping != FUNC2(sbi))) {
continue_unlock:
				FUNC15(page);
				continue;
			}
			if (FUNC8(page) != ino)
				goto continue_unlock;

			if (!FUNC3(page)) {
				/* someone wrote it for us */
				goto continue_unlock;
			}

			if (last_page)
				FUNC6(last_page, 0);

			FUNC7(page);
			last_page = page;
			FUNC15(page);
		}
		FUNC13(&pvec);
		FUNC4();
	}
	return last_page;
}