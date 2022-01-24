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
struct ufs_sb_info {int work_queued; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  sync_work; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 struct ufs_sb_info* FUNC0 (struct super_block*) ; 
 int dirty_writeback_interval ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

void FUNC5(struct super_block *sb)
{
	struct ufs_sb_info *sbi = FUNC0(sb);
	unsigned long delay;

	FUNC3(&sbi->work_lock);
	if (!sbi->work_queued) {
		delay = FUNC1(dirty_writeback_interval * 10);
		FUNC2(system_long_wq, &sbi->sync_work, delay);
		sbi->work_queued = 1;
	}
	FUNC4(&sbi->work_lock);
}