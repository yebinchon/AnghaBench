#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int log_blocks_per_seg; TYPE_2__* sb; } ;
struct discard_cmd_control {int max_discards; int rbtree_check; int /*<<< orphan*/  f2fs_issue_discard; int /*<<< orphan*/  discard_wait_queue; int /*<<< orphan*/  root; scalar_t__ next_pos; scalar_t__ undiscard_blks; scalar_t__ nr_discards; int /*<<< orphan*/  discard_cmd_cnt; int /*<<< orphan*/  queued_discard; int /*<<< orphan*/  issued_discard; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  fstrim_list; int /*<<< orphan*/  wait_list; int /*<<< orphan*/ * pend_list; int /*<<< orphan*/  entry_list; int /*<<< orphan*/  discard_granularity; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {struct discard_cmd_control* dcc_info; } ;
struct TYPE_5__ {TYPE_1__* s_bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DISCARD_GRANULARITY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_PLIST_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 TYPE_3__* FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct discard_cmd_control* FUNC8 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  issue_discard_thread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct discard_cmd_control*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct f2fs_sb_info *sbi)
{
	dev_t dev = sbi->sb->s_bdev->bd_dev;
	struct discard_cmd_control *dcc;
	int err = 0, i;

	if (FUNC6(sbi)->dcc_info) {
		dcc = FUNC6(sbi)->dcc_info;
		goto init_thread;
	}

	dcc = FUNC8(sbi, sizeof(struct discard_cmd_control), GFP_KERNEL);
	if (!dcc)
		return -ENOMEM;

	dcc->discard_granularity = DEFAULT_DISCARD_GRANULARITY;
	FUNC0(&dcc->entry_list);
	for (i = 0; i < MAX_PLIST_NUM; i++)
		FUNC0(&dcc->pend_list[i]);
	FUNC0(&dcc->wait_list);
	FUNC0(&dcc->fstrim_list);
	FUNC12(&dcc->cmd_lock);
	FUNC7(&dcc->issued_discard, 0);
	FUNC7(&dcc->queued_discard, 0);
	FUNC7(&dcc->discard_cmd_cnt, 0);
	dcc->nr_discards = 0;
	dcc->max_discards = FUNC2(sbi) << sbi->log_blocks_per_seg;
	dcc->undiscard_blks = 0;
	dcc->next_pos = 0;
	dcc->root = RB_ROOT_CACHED;
	dcc->rbtree_check = false;

	FUNC9(&dcc->discard_wait_queue);
	FUNC6(sbi)->dcc_info = dcc;
init_thread:
	dcc->f2fs_issue_discard = FUNC10(issue_discard_thread, sbi,
				"f2fs_discard-%u:%u", FUNC3(dev), FUNC4(dev));
	if (FUNC1(dcc->f2fs_issue_discard)) {
		err = FUNC5(dcc->f2fs_issue_discard);
		FUNC11(dcc);
		FUNC6(sbi)->dcc_info = NULL;
		return err;
	}

	return err;
}