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
struct the_nilfs {int ns_mount_state; int /*<<< orphan*/  ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_state; } ;

/* Variables and functions */
 int NILFS_ERROR_FS ; 
 int /*<<< orphan*/  NILFS_SB_COMMIT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nilfs_super_block**) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct nilfs_super_block** FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp;

	FUNC1(&nilfs->ns_sem);
	if (!(nilfs->ns_mount_state & NILFS_ERROR_FS)) {
		nilfs->ns_mount_state |= NILFS_ERROR_FS;
		sbp = FUNC4(sb, 0);
		if (FUNC2(sbp)) {
			sbp[0]->s_state |= FUNC0(NILFS_ERROR_FS);
			if (sbp[1])
				sbp[1]->s_state |= FUNC0(NILFS_ERROR_FS);
			FUNC3(sb, NILFS_SB_COMMIT_ALL);
		}
	}
	FUNC5(&nilfs->ns_sem);
}