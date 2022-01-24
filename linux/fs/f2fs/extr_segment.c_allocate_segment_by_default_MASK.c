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
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {scalar_t__ alloc_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CRC_RECOVERY_FLAG ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int CURSEG_WARM_NODE ; 
 scalar_t__ LFS ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,struct curseg_info*) ; 

__attribute__((used)) static void FUNC10(struct f2fs_sb_info *sbi,
						int type, bool force)
{
	struct curseg_info *curseg = FUNC0(sbi, type);

	if (force)
		FUNC8(sbi, type, true);
	else if (!FUNC6(sbi, CP_CRC_RECOVERY_FLAG) &&
					type == CURSEG_WARM_NODE)
		FUNC8(sbi, type, false);
	else if (curseg->alloc_type == LFS && FUNC4(sbi, type) &&
			FUNC7(!FUNC5(sbi, SBI_CP_DISABLED)))
		FUNC8(sbi, type, false);
	else if (FUNC2(sbi) && FUNC3(sbi, type))
		FUNC1(sbi, type);
	else
		FUNC8(sbi, type, false);

	FUNC9(sbi, curseg);
}