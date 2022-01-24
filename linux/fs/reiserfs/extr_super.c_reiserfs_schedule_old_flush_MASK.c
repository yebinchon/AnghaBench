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
struct super_block {int s_flags; } ;
struct reiserfs_sb_info {int work_queued; int /*<<< orphan*/  old_work_lock; int /*<<< orphan*/  old_work; } ;

/* Variables and functions */
 struct reiserfs_sb_info* FUNC0 (struct super_block*) ; 
 int SB_ACTIVE ; 
 int dirty_writeback_interval ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

void FUNC6(struct super_block *s)
{
	struct reiserfs_sb_info *sbi = FUNC0(s);
	unsigned long delay;

	/*
	 * Avoid scheduling flush when sb is being shut down. It can race
	 * with journal shutdown and free still queued delayed work.
	 */
	if (FUNC3(s) || !(s->s_flags & SB_ACTIVE))
		return;

	FUNC4(&sbi->old_work_lock);
	if (!sbi->work_queued) {
		delay = FUNC1(dirty_writeback_interval * 10);
		FUNC2(system_long_wq, &sbi->old_work, delay);
		sbi->work_queued = 1;
	}
	FUNC5(&sbi->old_work_lock);
}