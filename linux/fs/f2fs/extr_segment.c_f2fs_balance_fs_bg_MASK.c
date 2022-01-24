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
struct f2fs_sb_info {int /*<<< orphan*/  stat_info; int /*<<< orphan*/  sb; int /*<<< orphan*/  flush_lock; } ;
struct blk_plug {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_TIME ; 
 int /*<<< orphan*/  DATA_FLUSH ; 
 int /*<<< orphan*/  EXTENT_CACHE ; 
 int /*<<< orphan*/  EXTENT_CACHE_SHRINK_NUMBER ; 
 int /*<<< orphan*/  FILE_INODE ; 
 int /*<<< orphan*/  FREE_NIDS ; 
 int /*<<< orphan*/  INO_ENTRIES ; 
 int /*<<< orphan*/  MAX_FREE_NIDS ; 
 int /*<<< orphan*/  NAT_ENTRIES ; 
 int /*<<< orphan*/  NAT_ENTRY_PER_BLOCK ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 int /*<<< orphan*/  FUNC0 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(struct f2fs_sb_info *sbi)
{
	if (FUNC19(FUNC14(sbi, SBI_POR_DOING)))
		return;

	/* try to shrink extent cache when there is no enough memory */
	if (!FUNC5(sbi, EXTENT_CACHE))
		FUNC7(sbi, EXTENT_CACHE_SHRINK_NUMBER);

	/* check the # of cached NAT entries */
	if (!FUNC5(sbi, NAT_ENTRIES))
		FUNC11(sbi, NAT_ENTRY_PER_BLOCK);

	if (!FUNC5(sbi, FREE_NIDS))
		FUNC12(sbi, MAX_FREE_NIDS);
	else
		FUNC6(sbi, false, false);

	if (!FUNC13(sbi, REQ_TIME) &&
		(!FUNC2(sbi) && !FUNC3(sbi)))
		return;

	/* checkpoint is the only way to shrink partial cached entries */
	if (!FUNC5(sbi, NAT_ENTRIES) ||
			!FUNC5(sbi, INO_ENTRIES) ||
			FUNC4(sbi) ||
			FUNC2(sbi) ||
			FUNC3(sbi) ||
			FUNC10(sbi, CP_TIME)) {
		if (FUNC18(sbi, DATA_FLUSH)) {
			struct blk_plug plug;

			FUNC15(&sbi->flush_lock);

			FUNC1(&plug);
			FUNC8(sbi, FILE_INODE);
			FUNC0(&plug);

			FUNC16(&sbi->flush_lock);
		}
		FUNC9(sbi->sb, true);
		FUNC17(sbi->stat_info);
	}
}