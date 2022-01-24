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
struct f2fs_summary_block {int /*<<< orphan*/  footer; int /*<<< orphan*/ * entries; int /*<<< orphan*/  journal; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  curseg_mutex; int /*<<< orphan*/  journal_rwsem; int /*<<< orphan*/ * journal; struct f2fs_summary_block* sum_blk; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SUM_ENTRY_SIZE ; 
 int /*<<< orphan*/  SUM_FOOTER_SIZE ; 
 int /*<<< orphan*/  SUM_JOURNAL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_summary_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct f2fs_sb_info *sbi,
						int type, block_t blk_addr)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	struct page *page = FUNC2(sbi, blk_addr);
	struct f2fs_summary_block *src = curseg->sum_blk;
	struct f2fs_summary_block *dst;

	dst = (struct f2fs_summary_block *)FUNC8(page);
	FUNC5(dst, 0, PAGE_SIZE);

	FUNC6(&curseg->curseg_mutex);

	FUNC1(&curseg->journal_rwsem);
	FUNC4(&dst->journal, curseg->journal, SUM_JOURNAL_SIZE);
	FUNC10(&curseg->journal_rwsem);

	FUNC4(dst->entries, src->entries, SUM_ENTRY_SIZE);
	FUNC4(&dst->footer, &src->footer, SUM_FOOTER_SIZE);

	FUNC7(&curseg->curseg_mutex);

	FUNC9(page);
	FUNC3(page, 1);
}