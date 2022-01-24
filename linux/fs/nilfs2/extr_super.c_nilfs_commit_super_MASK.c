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
typedef  int /*<<< orphan*/  time64_t ;
struct the_nilfs {int ns_flushed_device; int /*<<< orphan*/  ns_sbsize; int /*<<< orphan*/  ns_crc_seed; int /*<<< orphan*/  ns_sbwtime; struct nilfs_super_block** ns_sbp; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {void* s_sum; int /*<<< orphan*/  s_wtime; } ;

/* Variables and functions */
 int NILFS_SB_COMMIT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct the_nilfs*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct super_block *sb, int flag)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp = nilfs->ns_sbp;
	time64_t t;

	/* nilfs->ns_sem must be locked by the caller. */
	t = FUNC4();
	nilfs->ns_sbwtime = t;
	sbp[0]->s_wtime = FUNC2(t);
	sbp[0]->s_sum = 0;
	sbp[0]->s_sum = FUNC1(FUNC3(nilfs->ns_crc_seed,
					     (unsigned char *)sbp[0],
					     nilfs->ns_sbsize));
	if (flag == NILFS_SB_COMMIT_ALL && sbp[1]) {
		sbp[1]->s_wtime = sbp[0]->s_wtime;
		sbp[1]->s_sum = 0;
		sbp[1]->s_sum = FUNC1(FUNC3(nilfs->ns_crc_seed,
					    (unsigned char *)sbp[1],
					    nilfs->ns_sbsize));
	}
	FUNC0(nilfs);
	nilfs->ns_flushed_device = 1;
	/* make sure store to ns_flushed_device cannot be reordered */
	FUNC6();
	return FUNC5(sb, flag);
}