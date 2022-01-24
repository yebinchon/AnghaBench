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
struct f2fs_sb_info {int /*<<< orphan*/  quota_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_QDATA ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_FLUSH ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_REPAIR ; 
 int /*<<< orphan*/  SBI_QUOTA_SKIP_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct f2fs_sb_info *sbi)
{
	bool ret = false;

	if (!FUNC3(sbi))
		return false;

	FUNC1(&sbi->quota_sem);
	if (FUNC4(sbi, SBI_QUOTA_SKIP_FLUSH)) {
		ret = false;
	} else if (FUNC4(sbi, SBI_QUOTA_NEED_REPAIR)) {
		ret = false;
	} else if (FUNC4(sbi, SBI_QUOTA_NEED_FLUSH)) {
		FUNC0(sbi, SBI_QUOTA_NEED_FLUSH);
		ret = true;
	} else if (FUNC2(sbi, F2FS_DIRTY_QDATA)) {
		ret = true;
	}
	FUNC5(&sbi->quota_sem);
	return ret;
}