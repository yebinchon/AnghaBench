#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct f2fs_sb_info {TYPE_1__* sb; } ;
struct f2fs_orphan_block {int /*<<< orphan*/ * ino; int /*<<< orphan*/  entry_count; } ;
typedef  scalar_t__ nid_t ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {unsigned int s_flags; int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ORPHAN_PRESENT_FLAG ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  META_CP ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  SBI_IS_RECOVERED ; 
 unsigned int SB_ACTIVE ; 
 unsigned int SB_RDONLY ; 
 int FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct f2fs_sb_info*) ; 
 int FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct f2fs_sb_info*,unsigned int) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int FUNC16 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

int FUNC18(struct f2fs_sb_info *sbi)
{
	block_t start_blk, orphan_blocks, i, j;
	unsigned int s_flags = sbi->sb->s_flags;
	int err = 0;
#ifdef CONFIG_QUOTA
	int quota_enabled;
#endif

	if (!FUNC13(sbi, CP_ORPHAN_PRESENT_FLAG))
		return 0;

	if (FUNC5(sbi->sb->s_bdev)) {
		FUNC9(sbi, "write access unavailable, skipping orphan cleanup");
		return 0;
	}

	if (s_flags & SB_RDONLY) {
		FUNC9(sbi, "orphan cleanup on readonly fs");
		sbi->sb->s_flags &= ~SB_RDONLY;
	}

#ifdef CONFIG_QUOTA
	/* Needed for iput() to work correctly and not trash data */
	sbi->sb->s_flags |= SB_ACTIVE;

	/*
	 * Turn on quotas which were not enabled for read-only mounts if
	 * filesystem has quota feature, so that they are updated correctly.
	 */
	quota_enabled = f2fs_enable_quota_files(sbi, s_flags & SB_RDONLY);
#endif

	start_blk = FUNC3(sbi) + 1 + FUNC2(sbi);
	orphan_blocks = FUNC4(sbi) - 1 - FUNC2(sbi);

	FUNC12(sbi, start_blk, orphan_blocks, META_CP, true);

	for (i = 0; i < orphan_blocks; i++) {
		struct page *page;
		struct f2fs_orphan_block *orphan_blk;

		page = FUNC8(sbi, start_blk + i);
		if (FUNC0(page)) {
			err = FUNC1(page);
			goto out;
		}

		orphan_blk = (struct f2fs_orphan_block *)FUNC15(page);
		for (j = 0; j < FUNC14(orphan_blk->entry_count); j++) {
			nid_t ino = FUNC14(orphan_blk->ino[j]);
			err = FUNC16(sbi, ino);
			if (err) {
				FUNC10(page, 1);
				goto out;
			}
		}
		FUNC10(page, 1);
	}
	/* clear Orphan Flag */
	FUNC6(sbi, CP_ORPHAN_PRESENT_FLAG);
out:
	FUNC17(sbi, SBI_IS_RECOVERED);

#ifdef CONFIG_QUOTA
	/* Turn quotas off */
	if (quota_enabled)
		f2fs_quota_off_umount(sbi->sb);
#endif
	sbi->sb->s_flags = s_flags; /* Restore SB_RDONLY status */

	return err;
}