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
struct f2fs_super_block {int /*<<< orphan*/  ssa_blkaddr; int /*<<< orphan*/  segment_count_main; int /*<<< orphan*/  segment_count; int /*<<< orphan*/  main_blkaddr; int /*<<< orphan*/  segment0_blkaddr; } ;
struct f2fs_sm_info {int main_segments; int rec_prefree_segments; int ipu_policy; int min_seq_blocks; int /*<<< orphan*/  curseg_lock; int /*<<< orphan*/  sit_entry_set; int /*<<< orphan*/  min_ssr_sections; int /*<<< orphan*/  min_hot_blocks; int /*<<< orphan*/  min_fsync_blocks; int /*<<< orphan*/  min_ipu_util; void* ssa_blkaddr; void* ovp_segments; void* reserved_segments; void* segment_count; void* main_blkaddr; void* seg0_blkaddr; } ;
struct f2fs_sb_info {int blocks_per_seg; int segs_per_sec; int /*<<< orphan*/  sb; struct f2fs_sm_info* sm_info; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  overprov_segment_count; int /*<<< orphan*/  rsvd_segment_count; } ;

/* Variables and functions */
 int DEF_MAX_RECLAIM_PREFREE_SEGMENTS ; 
 int /*<<< orphan*/  DEF_MIN_FSYNC_BLOCKS ; 
 int /*<<< orphan*/  DEF_MIN_HOT_BLOCKS ; 
 int /*<<< orphan*/  DEF_MIN_IPU_UTIL ; 
 int DEF_RECLAIM_PREFREE_SEGMENTS ; 
 int ENOMEM ; 
 struct f2fs_checkpoint* FUNC0 (struct f2fs_sb_info*) ; 
 int F2FS_IPU_FSYNC ; 
 struct f2fs_super_block* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LFS ; 
 int FUNC3 (struct f2fs_sb_info*) ; 
 int FUNC4 (struct f2fs_sb_info*) ; 
 int FUNC5 (struct f2fs_sb_info*) ; 
 int FUNC6 (struct f2fs_sb_info*) ; 
 int FUNC7 (struct f2fs_sb_info*) ; 
 int FUNC8 (struct f2fs_sb_info*) ; 
 int FUNC9 (struct f2fs_sb_info*) ; 
 struct f2fs_sm_info* FUNC10 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

int FUNC19(struct f2fs_sb_info *sbi)
{
	struct f2fs_super_block *raw_super = FUNC1(sbi);
	struct f2fs_checkpoint *ckpt = FUNC0(sbi);
	struct f2fs_sm_info *sm_info;
	int err;

	sm_info = FUNC10(sbi, sizeof(struct f2fs_sm_info), GFP_KERNEL);
	if (!sm_info)
		return -ENOMEM;

	/* init sm info */
	sbi->sm_info = sm_info;
	sm_info->seg0_blkaddr = FUNC15(raw_super->segment0_blkaddr);
	sm_info->main_blkaddr = FUNC15(raw_super->main_blkaddr);
	sm_info->segment_count = FUNC15(raw_super->segment_count);
	sm_info->reserved_segments = FUNC15(ckpt->rsvd_segment_count);
	sm_info->ovp_segments = FUNC15(ckpt->overprov_segment_count);
	sm_info->main_segments = FUNC15(raw_super->segment_count_main);
	sm_info->ssa_blkaddr = FUNC15(raw_super->ssa_blkaddr);
	sm_info->rec_prefree_segments = sm_info->main_segments *
					DEF_RECLAIM_PREFREE_SEGMENTS / 100;
	if (sm_info->rec_prefree_segments > DEF_MAX_RECLAIM_PREFREE_SEGMENTS)
		sm_info->rec_prefree_segments = DEF_MAX_RECLAIM_PREFREE_SEGMENTS;

	if (!FUNC18(sbi, LFS))
		sm_info->ipu_policy = 1 << F2FS_IPU_FSYNC;
	sm_info->min_ipu_util = DEF_MIN_IPU_UTIL;
	sm_info->min_fsync_blocks = DEF_MIN_FSYNC_BLOCKS;
	sm_info->min_seq_blocks = sbi->blocks_per_seg * sbi->segs_per_sec;
	sm_info->min_hot_blocks = DEF_MIN_HOT_BLOCKS;
	sm_info->min_ssr_sections = FUNC16(sbi);

	FUNC2(&sm_info->sit_entry_set);

	FUNC14(&sm_info->curseg_lock);

	if (!FUNC11(sbi->sb)) {
		err = FUNC9(sbi);
		if (err)
			return err;
	}

	err = FUNC8(sbi);
	if (err)
		return err;

	err = FUNC7(sbi);
	if (err)
		return err;
	err = FUNC5(sbi);
	if (err)
		return err;
	err = FUNC3(sbi);
	if (err)
		return err;

	/* reinit free segmap based on SIT */
	err = FUNC6(sbi);
	if (err)
		return err;

	FUNC12(sbi);
	err = FUNC4(sbi);
	if (err)
		return err;

	err = FUNC17(sbi);
	if (err)
		return err;

	FUNC13(sbi);
	return 0;
}