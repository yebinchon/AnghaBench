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
struct f2fs_summary_block {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int /*<<< orphan*/  seglist_lock; } ;
struct curseg_info {unsigned int next_segno; int /*<<< orphan*/  sum_blk; int /*<<< orphan*/  alloc_type; int /*<<< orphan*/  segno; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  DIRTY ; 
 struct dirty_seglist_info* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  PRE ; 
 int /*<<< orphan*/  SSR ; 
 int /*<<< orphan*/  SUM_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct curseg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct f2fs_summary_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct f2fs_sb_info *sbi, int type)
{
	struct dirty_seglist_info *dirty_i = FUNC1(sbi);
	struct curseg_info *curseg = FUNC0(sbi, type);
	unsigned int new_segno = curseg->next_segno;
	struct f2fs_summary_block *sum_node;
	struct page *sum_page;

	FUNC15(sbi, curseg->sum_blk,
				FUNC2(sbi, curseg->segno));
	FUNC6(sbi, new_segno);

	FUNC11(&dirty_i->seglist_lock);
	FUNC5(sbi, new_segno, PRE);
	FUNC5(sbi, new_segno, DIRTY);
	FUNC12(&dirty_i->seglist_lock);

	FUNC14(sbi, type, 1);
	curseg->alloc_type = SSR;
	FUNC4(sbi, curseg, 0);

	sum_page = FUNC8(sbi, new_segno);
	FUNC7(sbi, FUNC3(sum_page));
	sum_node = (struct f2fs_summary_block *)FUNC13(sum_page);
	FUNC10(curseg->sum_blk, sum_node, SUM_ENTRY_SIZE);
	FUNC9(sum_page, 1);
}