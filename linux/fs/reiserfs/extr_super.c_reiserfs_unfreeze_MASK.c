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
struct reiserfs_sb_info {int /*<<< orphan*/  old_work_lock; scalar_t__ work_queued; } ;

/* Variables and functions */
 struct reiserfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct super_block *s)
{
	struct reiserfs_sb_info *sbi = FUNC0(s);

	FUNC1(s);
	FUNC2(&sbi->old_work_lock);
	/* Allow old_work to run again */
	sbi->work_queued = 0;
	FUNC3(&sbi->old_work_lock);
	return 0;
}