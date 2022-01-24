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
struct writeback_control {scalar_t__ sync_mode; long nr_to_write; int /*<<< orphan*/  pages_skipped; } ;
struct f2fs_sb_info {int /*<<< orphan*/  cp_mutex; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_META ; 
 struct f2fs_sb_info* FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FS_META_IO ; 
 int /*<<< orphan*/  META ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ WB_SYNC_ALL ; 
 long FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 long FUNC4 (long,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 long FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct writeback_control*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct address_space *mapping,
				struct writeback_control *wbc)
{
	struct f2fs_sb_info *sbi = FUNC0(mapping);
	long diff, written;

	if (FUNC10(FUNC3(sbi, SBI_POR_DOING)))
		goto skip_write;

	/* collect a number of dirty meta pages and write together */
	if (wbc->sync_mode != WB_SYNC_ALL &&
			FUNC2(sbi, F2FS_DIRTY_META) <
					FUNC7(sbi, META))
		goto skip_write;

	/* if locked failed, cp will flush dirty pages instead */
	if (!FUNC5(&sbi->cp_mutex))
		goto skip_write;

	FUNC9(mapping->host, wbc, META);
	diff = FUNC8(sbi, META, wbc);
	written = FUNC1(sbi, META, wbc->nr_to_write, FS_META_IO);
	FUNC6(&sbi->cp_mutex);
	wbc->nr_to_write = FUNC4((long)0, wbc->nr_to_write - written - diff);
	return 0;

skip_write:
	wbc->pages_skipped += FUNC2(sbi, F2FS_DIRTY_META);
	FUNC9(mapping->host, wbc, META);
	return 0;
}