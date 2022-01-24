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
struct seg_entry {scalar_t__ valid_blocks; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  segno; } ;
struct TYPE_2__ {int /*<<< orphan*/  written_valid_blocks; } ;

/* Variables and functions */
 int CURSEG_COLD_NODE ; 
 int CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC5 (struct f2fs_sb_info*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi)
{
	unsigned int start;
	int type;

	for (start = 0; start < FUNC1(sbi); start++) {
		struct seg_entry *sentry = FUNC5(sbi, start);
		if (!sentry->valid_blocks)
			FUNC3(sbi, start);
		else
			FUNC2(sbi)->written_valid_blocks +=
						sentry->valid_blocks;
	}

	/* set use the current segments */
	for (type = CURSEG_HOT_DATA; type <= CURSEG_COLD_NODE; type++) {
		struct curseg_info *curseg_t = FUNC0(sbi, type);
		FUNC4(sbi, curseg_t->segno);
	}
}