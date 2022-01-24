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
struct super_block {int /*<<< orphan*/  s_remove_count; } ;
struct ext2_sb_info {TYPE_1__* s_es; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_mount_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_state; } ;

/* Variables and functions */
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb)
{
	struct ext2_sb_info *sbi = FUNC0(sb);

	/*
	 * Open but unlinked files present? Keep EXT2_VALID_FS flag cleared
	 * because we have unattached inodes and thus filesystem is not fully
	 * consistent.
	 */
	if (FUNC1(&sb->s_remove_count)) {
		FUNC3(sb, 1);
		return 0;
	}
	/* Set EXT2_FS_VALID flag */
	FUNC5(&sbi->s_lock);
	sbi->s_es->s_state = FUNC2(sbi->s_mount_state);
	FUNC6(&sbi->s_lock);
	FUNC4(sb, sbi->s_es, 1);

	return 0;
}