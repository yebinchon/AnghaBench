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
struct f2fs_sb_info {int s_ndevs; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  dirty_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int) ; 
 int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct f2fs_sb_info *sbi)
{
	int ret = 0, i;

	if (!FUNC3(sbi))
		return 0;

	for (i = 1; i < sbi->s_ndevs; i++) {
		if (!FUNC4(i, (char *)&sbi->dirty_device))
			continue;
		ret = FUNC1(sbi, FUNC0(i).bdev);
		if (ret)
			break;

		FUNC5(&sbi->dev_lock);
		FUNC2(i, (char *)&sbi->dirty_device);
		FUNC6(&sbi->dev_lock);
	}

	return ret;
}