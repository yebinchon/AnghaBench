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
struct super_block {int dummy; } ;
struct reiserfs_sb_info {int work_queued; int /*<<< orphan*/  old_work; int /*<<< orphan*/  old_work_lock; } ;

/* Variables and functions */
 struct reiserfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct super_block *s)
{
	struct reiserfs_sb_info *sbi = FUNC0(s);

	FUNC2(&sbi->old_work_lock);
	/* Make sure no new flushes will be queued */
	sbi->work_queued = 2;
	FUNC3(&sbi->old_work_lock);
	FUNC1(&FUNC0(s)->old_work);
}