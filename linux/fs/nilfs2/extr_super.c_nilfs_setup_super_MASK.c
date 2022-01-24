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
struct the_nilfs {int ns_mount_state; int /*<<< orphan*/  ns_sbsize; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {void* s_state; int /*<<< orphan*/  s_mtime; void* s_mnt_count; void* s_max_mnt_count; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int NILFS_DFL_MAX_MNT_COUNT ; 
 int NILFS_ERROR_FS ; 
 int /*<<< orphan*/  NILFS_SB_COMMIT_ALL ; 
 int NILFS_VALID_FS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_super_block*,struct nilfs_super_block*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 struct nilfs_super_block** FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, int is_mount)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp;
	int max_mnt_count;
	int mnt_count;

	/* nilfs->ns_sem must be locked by the caller. */
	sbp = FUNC7(sb, 0);
	if (!sbp)
		return -EIO;

	if (!is_mount)
		goto skip_mount_setup;

	max_mnt_count = FUNC3(sbp[0]->s_max_mnt_count);
	mnt_count = FUNC3(sbp[0]->s_mnt_count);

	if (nilfs->ns_mount_state & NILFS_ERROR_FS) {
		FUNC6(sb, KERN_WARNING, "mounting fs with errors");
#if 0
	} else if (max_mnt_count >= 0 && mnt_count >= max_mnt_count) {
		nilfs_msg(sb, KERN_WARNING, "maximal mount count reached");
#endif
	}
	if (!max_mnt_count)
		sbp[0]->s_max_mnt_count = FUNC0(NILFS_DFL_MAX_MNT_COUNT);

	sbp[0]->s_mnt_count = FUNC0(mnt_count + 1);
	sbp[0]->s_mtime = FUNC1(FUNC2());

skip_mount_setup:
	sbp[0]->s_state =
		FUNC0(FUNC3(sbp[0]->s_state) & ~NILFS_VALID_FS);
	/* synchronize sbp[1] with sbp[0] */
	if (sbp[1])
		FUNC4(sbp[1], sbp[0], nilfs->ns_sbsize);
	return FUNC5(sb, NILFS_SB_COMMIT_ALL);
}