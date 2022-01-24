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
struct the_nilfs {int /*<<< orphan*/  ns_mount_state; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {scalar_t__ s_last_cno; int /*<<< orphan*/  s_state; } ;

/* Variables and functions */
 int EIO ; 
 int NILFS_SB_COMMIT ; 
 int NILFS_SB_COMMIT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*,int) ; 
 struct nilfs_super_block** FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_super_block*,struct the_nilfs*) ; 

int FUNC4(struct super_block *sb)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp;
	int flag = NILFS_SB_COMMIT;
	int ret = -EIO;

	sbp = FUNC2(sb, 0);
	if (sbp) {
		sbp[0]->s_state = FUNC0(nilfs->ns_mount_state);
		FUNC3(sbp[0], nilfs);
		if (sbp[1] && sbp[0]->s_last_cno == sbp[1]->s_last_cno) {
			/*
			 * make the "clean" flag also to the opposite
			 * super block if both super blocks point to
			 * the same checkpoint.
			 */
			sbp[1]->s_state = sbp[0]->s_state;
			flag = NILFS_SB_COMMIT_ALL;
		}
		ret = FUNC1(sb, flag);
	}
	return ret;
}