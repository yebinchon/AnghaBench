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
struct the_nilfs {unsigned int ns_inode_size; int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_nongc_ctime; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_sem; struct nilfs_super_block** ns_sbp; } ;
struct super_block {int dummy; } ;
struct nilfs_super_root {int /*<<< orphan*/  sr_nongc_ctime; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_segment_usage_size; int /*<<< orphan*/  s_checkpoint_size; int /*<<< orphan*/  s_dat_entry_size; } ;
struct nilfs_inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct super_block*,unsigned int,struct nilfs_inode*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct super_block*,unsigned int,struct nilfs_inode*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct the_nilfs*,int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 int FUNC11 (struct super_block*,unsigned int,struct nilfs_inode*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct the_nilfs *nilfs,
				 struct super_block *sb, sector_t sr_block)
{
	struct buffer_head *bh_sr;
	struct nilfs_super_root *raw_sr;
	struct nilfs_super_block **sbp = nilfs->ns_sbp;
	struct nilfs_inode *rawi;
	unsigned int dat_entry_size, segment_usage_size, checkpoint_size;
	unsigned int inode_size;
	int err;

	err = FUNC10(nilfs, sr_block, &bh_sr, 1);
	if (FUNC12(err))
		return err;

	FUNC4(&nilfs->ns_sem);
	dat_entry_size = FUNC6(sbp[0]->s_dat_entry_size);
	checkpoint_size = FUNC6(sbp[0]->s_checkpoint_size);
	segment_usage_size = FUNC6(sbp[0]->s_segment_usage_size);
	FUNC13(&nilfs->ns_sem);

	inode_size = nilfs->ns_inode_size;

	rawi = (void *)bh_sr->b_data + FUNC1(inode_size);
	err = FUNC9(sb, dat_entry_size, rawi, &nilfs->ns_dat);
	if (err)
		goto failed;

	rawi = (void *)bh_sr->b_data + FUNC0(inode_size);
	err = FUNC8(sb, checkpoint_size, rawi, &nilfs->ns_cpfile);
	if (err)
		goto failed_dat;

	rawi = (void *)bh_sr->b_data + FUNC2(inode_size);
	err = FUNC11(sb, segment_usage_size, rawi,
				&nilfs->ns_sufile);
	if (err)
		goto failed_cpfile;

	raw_sr = (struct nilfs_super_root *)bh_sr->b_data;
	nilfs->ns_nongc_ctime = FUNC7(raw_sr->sr_nongc_ctime);

 failed:
	FUNC3(bh_sr);
	return err;

 failed_cpfile:
	FUNC5(nilfs->ns_cpfile);

 failed_dat:
	FUNC5(nilfs->ns_dat);
	goto failed;
}