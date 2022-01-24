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
struct discard_cmd_control {int /*<<< orphan*/  cmd_lock; } ;
struct discard_cmd {scalar_t__ state; unsigned int len; int /*<<< orphan*/  error; int /*<<< orphan*/  ref; int /*<<< orphan*/  wait; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 scalar_t__ D_DONE ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct discard_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC6(struct f2fs_sb_info *sbi,
							struct discard_cmd *dc)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	unsigned int len = 0;

	FUNC5(&dc->wait);
	FUNC3(&dcc->cmd_lock);
	FUNC2(sbi, dc->state != D_DONE);
	dc->ref--;
	if (!dc->ref) {
		if (!dc->error)
			len = dc->len;
		FUNC1(sbi, dc);
	}
	FUNC4(&dcc->cmd_lock);

	return len;
}