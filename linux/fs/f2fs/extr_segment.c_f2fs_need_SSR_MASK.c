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
struct f2fs_sb_info {scalar_t__ gc_mode; } ;
struct TYPE_2__ {scalar_t__ min_ssr_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 scalar_t__ GC_URGENT ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 int FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(struct f2fs_sb_info *sbi)
{
	int node_secs = FUNC2(sbi, F2FS_DIRTY_NODES);
	int dent_secs = FUNC2(sbi, F2FS_DIRTY_DENTS);
	int imeta_secs = FUNC2(sbi, F2FS_DIRTY_IMETA);

	if (FUNC5(sbi, LFS))
		return false;
	if (sbi->gc_mode == GC_URGENT)
		return true;
	if (FUNC6(FUNC3(sbi, SBI_CP_DISABLED)))
		return true;

	return FUNC1(sbi) <= (node_secs + 2 * dent_secs + imeta_secs +
			FUNC0(sbi)->min_ssr_sections + FUNC4(sbi));
}