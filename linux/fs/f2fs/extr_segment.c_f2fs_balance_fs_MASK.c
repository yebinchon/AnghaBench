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
struct f2fs_sb_info {int /*<<< orphan*/  gc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_CHECKPOINT ; 
 int /*<<< orphan*/  NULL_SEGNO ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

void FUNC9(struct f2fs_sb_info *sbi, bool need)
{
	if (FUNC8(sbi, FAULT_CHECKPOINT)) {
		FUNC4(FAULT_CHECKPOINT);
		FUNC5(sbi, false);
	}

	/* balance_fs_bg is able to be pending */
	if (need && FUNC0(sbi))
		FUNC1(sbi);

	if (!FUNC3(sbi))
		return;

	/*
	 * We should do GC or end up with checkpoint, if there are so many dirty
	 * dir/node pages without enough free segments.
	 */
	if (FUNC6(sbi, 0, 0)) {
		FUNC7(&sbi->gc_mutex);
		FUNC2(sbi, false, false, NULL_SEGNO);
	}
}