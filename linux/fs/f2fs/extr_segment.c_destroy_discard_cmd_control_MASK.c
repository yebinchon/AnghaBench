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
struct discard_cmd_control {int /*<<< orphan*/  discard_cmd_cnt; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct discard_cmd_control*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;

	if (!dcc)
		return;

	FUNC3(sbi);

	/*
	 * Recovery can cache discard commands, so in error path of
	 * fill_super(), it needs to give a chance to handle them.
	 */
	if (FUNC5(FUNC1(&dcc->discard_cmd_cnt)))
		FUNC2(sbi);

	FUNC4(dcc);
	FUNC0(sbi)->dcc_info = NULL;
}