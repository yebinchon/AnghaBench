#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  WB_REASON_SYNC ; 
 int /*<<< orphan*/  fdatawait_one_bdev ; 
 int /*<<< orphan*/  fdatawrite_one_bdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  laptop_mode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sync_fs_one_sb ; 
 int /*<<< orphan*/  sync_inodes_one_sb ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	int nowait = 0, wait = 1;

	FUNC4(WB_REASON_SYNC);
	FUNC1(sync_inodes_one_sb, NULL);
	FUNC1(sync_fs_one_sb, &nowait);
	FUNC1(sync_fs_one_sb, &wait);
	FUNC0(fdatawrite_one_bdev, NULL);
	FUNC0(fdatawait_one_bdev, NULL);
	if (FUNC3(laptop_mode))
		FUNC2();
}