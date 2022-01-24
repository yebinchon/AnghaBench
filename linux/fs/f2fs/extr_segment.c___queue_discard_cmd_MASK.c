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
struct f2fs_sb_info {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_6__ {scalar_t__ start_blk; } ;
struct TYPE_5__ {TYPE_1__* dcc_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 int FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct f2fs_sb_info *sbi,
		struct block_device *bdev, block_t blkstart, block_t blklen)
{
	block_t lblkstart = blkstart;

	if (!FUNC3(bdev))
		return 0;

	FUNC8(bdev, blkstart, blklen);

	if (FUNC4(sbi)) {
		int devi = FUNC5(sbi, blkstart);

		blkstart -= FUNC0(devi).start_blk;
	}
	FUNC6(&FUNC1(sbi)->dcc_info->cmd_lock);
	FUNC2(sbi, bdev, lblkstart, blkstart, blklen);
	FUNC7(&FUNC1(sbi)->dcc_info->cmd_lock);
	return 0;
}