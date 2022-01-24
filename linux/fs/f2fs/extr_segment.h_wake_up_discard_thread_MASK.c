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
struct discard_cmd_control {int discard_granularity; int discard_wake; int /*<<< orphan*/  discard_wait_queue; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/ * pend_list; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD_TIME ; 
 int MAX_PLIST_NUM ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct f2fs_sb_info *sbi, bool force)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	bool wakeup = false;
	int i;

	if (force)
		goto wake_up;

	FUNC3(&dcc->cmd_lock);
	for (i = MAX_PLIST_NUM - 1; i >= 0; i--) {
		if (i + 1 < dcc->discard_granularity)
			break;
		if (!FUNC2(&dcc->pend_list[i])) {
			wakeup = true;
			break;
		}
	}
	FUNC4(&dcc->cmd_lock);
	if (!wakeup || !FUNC1(sbi, DISCARD_TIME))
		return;
wake_up:
	dcc->discard_wake = 1;
	FUNC5(&dcc->discard_wait_queue);
}