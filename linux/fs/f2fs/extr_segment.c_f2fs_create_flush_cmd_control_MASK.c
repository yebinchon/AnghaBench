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
struct flush_cmd_control {scalar_t__ f2fs_issue_flush; int /*<<< orphan*/  issue_list; int /*<<< orphan*/  flush_wait_queue; int /*<<< orphan*/  queued_flush; int /*<<< orphan*/  issued_flush; } ;
struct f2fs_sb_info {TYPE_2__* sb; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {struct flush_cmd_control* fcc_info; } ;
struct TYPE_5__ {TYPE_1__* s_bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FLUSH_MERGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_3__* FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct flush_cmd_control* FUNC6 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  issue_flush_thread ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct flush_cmd_control*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

int FUNC12(struct f2fs_sb_info *sbi)
{
	dev_t dev = sbi->sb->s_bdev->bd_dev;
	struct flush_cmd_control *fcc;
	int err = 0;

	if (FUNC4(sbi)->fcc_info) {
		fcc = FUNC4(sbi)->fcc_info;
		if (fcc->f2fs_issue_flush)
			return err;
		goto init_thread;
	}

	fcc = FUNC6(sbi, sizeof(struct flush_cmd_control), GFP_KERNEL);
	if (!fcc)
		return -ENOMEM;
	FUNC5(&fcc->issued_flush, 0);
	FUNC5(&fcc->queued_flush, 0);
	FUNC8(&fcc->flush_wait_queue);
	FUNC7(&fcc->issue_list);
	FUNC4(sbi)->fcc_info = fcc;
	if (!FUNC11(sbi, FLUSH_MERGE))
		return err;

init_thread:
	fcc->f2fs_issue_flush = FUNC9(issue_flush_thread, sbi,
				"f2fs_flush-%u:%u", FUNC1(dev), FUNC2(dev));
	if (FUNC0(fcc->f2fs_issue_flush)) {
		err = FUNC3(fcc->f2fs_issue_flush);
		FUNC10(fcc);
		FUNC4(sbi)->fcc_info = NULL;
		return err;
	}

	return err;
}