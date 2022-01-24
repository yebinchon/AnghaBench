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
struct discard_cmd_control {int dummy; } ;
struct discard_cmd {int error; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  lstart; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; scalar_t__ bio_ref; int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KERN_INFO ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct discard_cmd_control*,struct discard_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct f2fs_sb_info *sbi,
							struct discard_cmd *dc)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	unsigned long flags;

	FUNC6(dc->bdev, dc->start, dc->len);

	FUNC4(&dc->lock, flags);
	if (dc->bio_ref) {
		FUNC5(&dc->lock, flags);
		return;
	}
	FUNC5(&dc->lock, flags);

	FUNC2(sbi, dc->ref);

	if (dc->error == -EOPNOTSUPP)
		dc->error = 0;

	if (dc->error)
		FUNC3(
			"%sF2FS-fs: Issue discard(%u, %u, %u) failed, ret: %d",
			KERN_INFO, dc->lstart, dc->start, dc->len, dc->error);
	FUNC1(dcc, dc);
}