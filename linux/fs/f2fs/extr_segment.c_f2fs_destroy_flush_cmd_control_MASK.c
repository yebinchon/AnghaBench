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
struct task_struct {int dummy; } ;
struct flush_cmd_control {struct task_struct* f2fs_issue_flush; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct flush_cmd_control* fcc_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct flush_cmd_control*) ; 

void FUNC3(struct f2fs_sb_info *sbi, bool free)
{
	struct flush_cmd_control *fcc = FUNC0(sbi)->fcc_info;

	if (fcc && fcc->f2fs_issue_flush) {
		struct task_struct *flush_thread = fcc->f2fs_issue_flush;

		fcc->f2fs_issue_flush = NULL;
		FUNC1(flush_thread);
	}
	if (free) {
		FUNC2(fcc);
		FUNC0(sbi)->fcc_info = NULL;
	}
}