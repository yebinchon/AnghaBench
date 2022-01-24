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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FS_CP_META_IO ; 
 int /*<<< orphan*/  META ; 
 int /*<<< orphan*/  META_FLUSH ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct page*,struct writeback_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct f2fs_sb_info *sbi,
	void *src, block_t blk_addr)
{
	struct writeback_control wbc = {
		.for_reclaim = 0,
	};

	/*
	 * pagevec_lookup_tag and lock_page again will take
	 * some extra time. Therefore, f2fs_update_meta_pages and
	 * f2fs_sync_meta_pages are combined in this function.
	 */
	struct page *page = FUNC4(sbi, blk_addr);
	int err;

	FUNC7(page, META, true, true);

	FUNC8(FUNC9(page), src, PAGE_SIZE);

	FUNC10(page);
	if (FUNC11(!FUNC1(page)))
		FUNC2(sbi, 1);

	/* writeout cp pack 2 page */
	err = FUNC0(page, &wbc, FS_CP_META_IO);
	if (FUNC11(err && FUNC3(sbi))) {
		FUNC5(page, 1);
		return;
	}

	FUNC2(sbi, err);
	FUNC5(page, 0);

	/* submit checkpoint (with barrier if NOBARRIER is not set) */
	FUNC6(sbi, META_FLUSH);
}