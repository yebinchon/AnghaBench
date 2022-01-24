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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct f2fs_sb_info {scalar_t__ gc_mode; int /*<<< orphan*/  sb; } ;
struct discard_policy {unsigned int max_interval; unsigned int min_interval; unsigned int mid_interval; } ;
struct discard_cmd_control {int discard_granularity; int /*<<< orphan*/  queued_discard; scalar_t__ discard_wake; int /*<<< orphan*/  discard_wait_queue; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 unsigned int DEF_MIN_DISCARD_ISSUE_TIME ; 
 int /*<<< orphan*/  DISCARD_TIME ; 
 int /*<<< orphan*/  DPOLICY_BG ; 
 int /*<<< orphan*/  DPOLICY_FORCE ; 
 scalar_t__ GC_URGENT ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct discard_policy*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct f2fs_sb_info*,struct discard_policy*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,struct discard_policy*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(void *data)
{
	struct f2fs_sb_info *sbi = data;
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	wait_queue_head_t *q = &dcc->discard_wait_queue;
	struct discard_policy dpolicy;
	unsigned int wait_ms = DEF_MIN_DISCARD_ISSUE_TIME;
	int issued;

	FUNC13();

	do {
		FUNC1(sbi, &dpolicy, DPOLICY_BG,
					dcc->discard_granularity);

		FUNC15(*q,
				FUNC9() || FUNC7(current) ||
				dcc->discard_wake,
				FUNC10(wait_ms));

		if (dcc->discard_wake)
			dcc->discard_wake = 0;

		/* clean up pending candidates before going to sleep */
		if (FUNC4(&dcc->queued_discard))
			FUNC3(sbi, NULL);

		if (FUNC14())
			continue;
		if (FUNC5(sbi->sb))
			continue;
		if (FUNC9())
			return 0;
		if (FUNC8(sbi, SBI_NEED_FSCK)) {
			wait_ms = dpolicy.max_interval;
			continue;
		}

		if (sbi->gc_mode == GC_URGENT)
			FUNC1(sbi, &dpolicy, DPOLICY_FORCE, 1);

		FUNC12(sbi->sb);

		issued = FUNC2(sbi, &dpolicy);
		if (issued > 0) {
			FUNC3(sbi, &dpolicy);
			wait_ms = dpolicy.min_interval;
		} else if (issued == -1){
			wait_ms = FUNC6(sbi, DISCARD_TIME);
			if (!wait_ms)
				wait_ms = dpolicy.mid_interval;
		} else {
			wait_ms = dpolicy.max_interval;
		}

		FUNC11(sbi->sb);

	} while (!FUNC9());
	return 0;
}