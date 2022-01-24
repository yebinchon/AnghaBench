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
struct discard_cmd_control {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  root; } ;
struct discard_cmd {scalar_t__ state; int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 scalar_t__ D_PREP ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct discard_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct discard_cmd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi, block_t blkaddr)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	struct discard_cmd *dc;
	bool need_wait = false;

	FUNC4(&dcc->cmd_lock);
	dc = (struct discard_cmd *)FUNC3(&dcc->root,
							NULL, blkaddr);
	if (dc) {
		if (dc->state == D_PREP) {
			FUNC1(sbi, dc, blkaddr);
		} else {
			dc->ref++;
			need_wait = true;
		}
	}
	FUNC5(&dcc->cmd_lock);

	if (need_wait)
		FUNC2(sbi, dc);
}