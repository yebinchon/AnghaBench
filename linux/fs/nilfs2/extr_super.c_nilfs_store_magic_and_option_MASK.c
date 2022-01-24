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
struct the_nilfs {void* ns_watermark; void* ns_interval; void* ns_resgid; void* ns_resuid; } ;
struct super_block {int /*<<< orphan*/  s_flags; void* s_magic; struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_c_block_max; int /*<<< orphan*/  s_c_interval; int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_magic; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SB_NOATIME ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct nilfs_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC4(struct super_block *sb,
				 struct nilfs_super_block *sbp,
				 char *data)
{
	struct the_nilfs *nilfs = sb->s_fs_info;

	sb->s_magic = FUNC0(sbp->s_magic);

	/* FS independent flags */
#ifdef NILFS_ATIME_DISABLE
	sb->s_flags |= SB_NOATIME;
#endif

	FUNC2(sb, sbp);

	nilfs->ns_resuid = FUNC0(sbp->s_def_resuid);
	nilfs->ns_resgid = FUNC0(sbp->s_def_resgid);
	nilfs->ns_interval = FUNC1(sbp->s_c_interval);
	nilfs->ns_watermark = FUNC1(sbp->s_c_block_max);

	return !FUNC3(data, sb, 0) ? -EINVAL : 0;
}