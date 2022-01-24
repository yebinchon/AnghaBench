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
struct ufs_sb_info {struct ufs_sb_info* s_uspi; int /*<<< orphan*/  sync_work; } ;
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ufs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct ufs_sb_info * sbi = FUNC1(sb);

	FUNC0("ENTER\n");

	if (!FUNC4(sb))
		FUNC6(sb);
	FUNC2(&sbi->sync_work);

	FUNC5 (sbi->s_uspi);
	FUNC3 (sbi->s_uspi);
	FUNC3 (sbi);
	sb->s_fs_info = NULL;
	FUNC0("EXIT\n");
	return;
}