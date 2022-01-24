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
struct f2fs_sb_info {int dummy; } ;
struct discard_policy {int /*<<< orphan*/  timeout; } ;
struct discard_cmd_control {int /*<<< orphan*/  discard_cmd_cnt; int /*<<< orphan*/  discard_granularity; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPOLICY_UMOUNT ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  UMOUNT_DISCARD_TIMEOUT ; 
 int FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct discard_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,struct discard_policy*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

bool FUNC7(struct f2fs_sb_info *sbi)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	struct discard_policy dpolicy;
	bool dropped;

	FUNC2(sbi, &dpolicy, DPOLICY_UMOUNT,
					dcc->discard_granularity);
	dpolicy.timeout = UMOUNT_DISCARD_TIMEOUT;
	FUNC3(sbi, &dpolicy);
	dropped = FUNC1(sbi);

	/* just to make sure there is no pending discard commands */
	FUNC4(sbi, NULL);

	FUNC6(sbi, FUNC5(&dcc->discard_cmd_cnt));
	return dropped;
}