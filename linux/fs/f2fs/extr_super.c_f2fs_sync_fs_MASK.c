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
struct super_block {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  gc_mutex; } ;
struct cp_control {int /*<<< orphan*/  reason; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct f2fs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct super_block *sb, int sync)
{
	struct f2fs_sb_info *sbi = FUNC0(sb);
	int err = 0;

	if (FUNC9(FUNC2(sbi)))
		return 0;
	if (FUNC9(FUNC5(sbi, SBI_CP_DISABLED)))
		return 0;

	FUNC8(sb, sync);

	if (FUNC9(FUNC5(sbi, SBI_POR_DOING)))
		return -EAGAIN;

	if (sync) {
		struct cp_control cpc;

		cpc.reason = FUNC1(sbi);

		FUNC6(&sbi->gc_mutex);
		err = FUNC4(sbi, &cpc);
		FUNC7(&sbi->gc_mutex);
	}
	FUNC3(NULL, 1);

	return err;
}