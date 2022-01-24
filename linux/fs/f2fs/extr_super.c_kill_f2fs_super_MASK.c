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
struct super_block {int /*<<< orphan*/  s_flags; scalar_t__ s_root; } ;
struct f2fs_sb_info {int dummy; } ;
struct cp_control {int /*<<< orphan*/  reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UMOUNT ; 
 int /*<<< orphan*/  CP_UMOUNT_FLAG ; 
 struct f2fs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  SBI_IS_CLOSE ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 int /*<<< orphan*/  SBI_IS_RECOVERED ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct cp_control*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb)
{
	if (sb->s_root) {
		struct f2fs_sb_info *sbi = FUNC0(sb);

		FUNC8(sbi, SBI_IS_CLOSE);
		FUNC3(sbi);
		FUNC2(sbi);

		if (FUNC5(sbi, SBI_IS_DIRTY) ||
				!FUNC6(sbi, CP_UMOUNT_FLAG)) {
			struct cp_control cpc = {
				.reason = CP_UMOUNT,
			};
			FUNC4(sbi, &cpc);
		}

		if (FUNC5(sbi, SBI_IS_RECOVERED) && FUNC1(sb))
			sb->s_flags &= ~SB_RDONLY;
	}
	FUNC7(sb);
}