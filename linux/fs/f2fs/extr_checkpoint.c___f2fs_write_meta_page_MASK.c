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
struct writeback_control {scalar_t__ for_reclaim; } ;
struct page {scalar_t__ index; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int /*<<< orphan*/  F2FS_DIRTY_META ; 
 struct f2fs_sb_info* FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  META ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct page *page,
				struct writeback_control *wbc,
				enum iostat_type io_type)
{
	struct f2fs_sb_info *sbi = FUNC0(page);

	FUNC9(page, META);

	if (FUNC10(FUNC3(sbi)))
		goto redirty_out;
	if (FUNC10(FUNC7(sbi, SBI_POR_DOING)))
		goto redirty_out;
	if (wbc->for_reclaim && page->index < FUNC1(sbi, 0))
		goto redirty_out;

	FUNC4(sbi, page, io_type);
	FUNC2(sbi, F2FS_DIRTY_META);

	if (wbc->for_reclaim)
		FUNC6(sbi, NULL, page, 0, META);

	FUNC11(page);

	if (FUNC10(FUNC3(sbi)))
		FUNC5(sbi, META);

	return 0;

redirty_out:
	FUNC8(wbc, page);
	return AOP_WRITEPAGE_ACTIVATE;
}