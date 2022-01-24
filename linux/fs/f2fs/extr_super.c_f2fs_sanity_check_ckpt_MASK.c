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
struct f2fs_super_block {int /*<<< orphan*/  segment_count_main; int /*<<< orphan*/  log_blocks_per_seg; int /*<<< orphan*/  segment_count_ssa; int /*<<< orphan*/  segment_count_nat; int /*<<< orphan*/  segment_count_sit; int /*<<< orphan*/  segment_count_ckpt; int /*<<< orphan*/  segment_count; } ;
struct f2fs_sb_info {unsigned int total_node_count; unsigned int blocks_per_seg; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  checksum_offset; int /*<<< orphan*/  nat_ver_bitmap_bytesize; int /*<<< orphan*/  sit_ver_bitmap_bytesize; int /*<<< orphan*/ * cur_node_segno; int /*<<< orphan*/ * cur_data_segno; int /*<<< orphan*/ * cur_data_blkoff; int /*<<< orphan*/ * cur_node_blkoff; int /*<<< orphan*/  valid_node_count; int /*<<< orphan*/  valid_block_count; int /*<<< orphan*/  user_block_count; int /*<<< orphan*/  rsvd_segment_count; int /*<<< orphan*/  overprov_segment_count; } ;
typedef  unsigned int block_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_LARGE_NAT_BITMAP_FLAG ; 
 unsigned int CP_MIN_CHKSUM_OFFSET ; 
 struct f2fs_checkpoint* FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int F2FS_MIN_SEGMENTS ; 
 struct f2fs_super_block* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int F2FS_RESERVED_NODE_NUM ; 
 int NR_CURSEG_DATA_TYPE ; 
 int NR_CURSEG_NODE_TYPE ; 
 unsigned int NR_CURSEG_TYPE ; 
 unsigned int FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_checkpoint*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct f2fs_sb_info*) ; 
 int FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,char*,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct f2fs_sb_info *sbi)
{
	unsigned int total, fsmeta;
	struct f2fs_super_block *raw_super = FUNC1(sbi);
	struct f2fs_checkpoint *ckpt = FUNC0(sbi);
	unsigned int ovp_segments, reserved_segments;
	unsigned int main_segs, blocks_per_seg;
	unsigned int sit_segs, nat_segs;
	unsigned int sit_bitmap_size, nat_bitmap_size;
	unsigned int log_blocks_per_seg;
	unsigned int segment_count_main;
	unsigned int cp_pack_start_sum, cp_payload;
	block_t user_block_count, valid_user_blocks;
	block_t avail_node_count, valid_node_count;
	int i, j;

	total = FUNC9(raw_super->segment_count);
	fsmeta = FUNC9(raw_super->segment_count_ckpt);
	sit_segs = FUNC9(raw_super->segment_count_sit);
	fsmeta += sit_segs;
	nat_segs = FUNC9(raw_super->segment_count_nat);
	fsmeta += nat_segs;
	fsmeta += FUNC9(ckpt->rsvd_segment_count);
	fsmeta += FUNC9(raw_super->segment_count_ssa);

	if (FUNC11(fsmeta >= total))
		return 1;

	ovp_segments = FUNC9(ckpt->overprov_segment_count);
	reserved_segments = FUNC9(ckpt->rsvd_segment_count);

	if (FUNC11(fsmeta < F2FS_MIN_SEGMENTS ||
			ovp_segments == 0 || reserved_segments == 0)) {
		FUNC6(sbi, "Wrong layout: check mkfs.f2fs version");
		return 1;
	}

	user_block_count = FUNC10(ckpt->user_block_count);
	segment_count_main = FUNC9(raw_super->segment_count_main);
	log_blocks_per_seg = FUNC9(raw_super->log_blocks_per_seg);
	if (!user_block_count || user_block_count >=
			segment_count_main << log_blocks_per_seg) {
		FUNC6(sbi, "Wrong user_block_count: %u",
			 user_block_count);
		return 1;
	}

	valid_user_blocks = FUNC10(ckpt->valid_block_count);
	if (valid_user_blocks > user_block_count) {
		FUNC6(sbi, "Wrong valid_user_blocks: %u, user_block_count: %u",
			 valid_user_blocks, user_block_count);
		return 1;
	}

	valid_node_count = FUNC9(ckpt->valid_node_count);
	avail_node_count = sbi->total_node_count - F2FS_RESERVED_NODE_NUM;
	if (valid_node_count > avail_node_count) {
		FUNC6(sbi, "Wrong valid_node_count: %u, avail_node_count: %u",
			 valid_node_count, avail_node_count);
		return 1;
	}

	main_segs = FUNC9(raw_super->segment_count_main);
	blocks_per_seg = sbi->blocks_per_seg;

	for (i = 0; i < NR_CURSEG_NODE_TYPE; i++) {
		if (FUNC9(ckpt->cur_node_segno[i]) >= main_segs ||
			FUNC8(ckpt->cur_node_blkoff[i]) >= blocks_per_seg)
			return 1;
		for (j = i + 1; j < NR_CURSEG_NODE_TYPE; j++) {
			if (FUNC9(ckpt->cur_node_segno[i]) ==
				FUNC9(ckpt->cur_node_segno[j])) {
				FUNC6(sbi, "Node segment (%u, %u) has the same segno: %u",
					 i, j,
					 FUNC9(ckpt->cur_node_segno[i]));
				return 1;
			}
		}
	}
	for (i = 0; i < NR_CURSEG_DATA_TYPE; i++) {
		if (FUNC9(ckpt->cur_data_segno[i]) >= main_segs ||
			FUNC8(ckpt->cur_data_blkoff[i]) >= blocks_per_seg)
			return 1;
		for (j = i + 1; j < NR_CURSEG_DATA_TYPE; j++) {
			if (FUNC9(ckpt->cur_data_segno[i]) ==
				FUNC9(ckpt->cur_data_segno[j])) {
				FUNC6(sbi, "Data segment (%u, %u) has the same segno: %u",
					 i, j,
					 FUNC9(ckpt->cur_data_segno[i]));
				return 1;
			}
		}
	}
	for (i = 0; i < NR_CURSEG_NODE_TYPE; i++) {
		for (j = 0; j < NR_CURSEG_DATA_TYPE; j++) {
			if (FUNC9(ckpt->cur_node_segno[i]) ==
				FUNC9(ckpt->cur_data_segno[j])) {
				FUNC6(sbi, "Node segment (%u) and Data segment (%u) has the same segno: %u",
					 i, j,
					 FUNC9(ckpt->cur_node_segno[i]));
				return 1;
			}
		}
	}

	sit_bitmap_size = FUNC9(ckpt->sit_ver_bitmap_bytesize);
	nat_bitmap_size = FUNC9(ckpt->nat_ver_bitmap_bytesize);

	if (sit_bitmap_size != ((sit_segs / 2) << log_blocks_per_seg) / 8 ||
		nat_bitmap_size != ((nat_segs / 2) << log_blocks_per_seg) / 8) {
		FUNC6(sbi, "Wrong bitmap size: sit: %u, nat:%u",
			 sit_bitmap_size, nat_bitmap_size);
		return 1;
	}

	cp_pack_start_sum = FUNC4(sbi);
	cp_payload = FUNC2(sbi);
	if (cp_pack_start_sum < cp_payload + 1 ||
		cp_pack_start_sum > blocks_per_seg - 1 -
			NR_CURSEG_TYPE) {
		FUNC6(sbi, "Wrong cp_pack_start_sum: %u",
			 cp_pack_start_sum);
		return 1;
	}

	if (FUNC3(ckpt, CP_LARGE_NAT_BITMAP_FLAG) &&
		FUNC9(ckpt->checksum_offset) != CP_MIN_CHKSUM_OFFSET) {
		FUNC7(sbi, "using deprecated layout of large_nat_bitmap, "
			  "please run fsck v1.13.0 or higher to repair, chksum_offset: %u, "
			  "fixed with patch: \"f2fs-tools: relocate chksum_offset for large_nat_bitmap feature\"",
			  FUNC9(ckpt->checksum_offset));
		return 1;
	}

	if (FUNC11(FUNC5(sbi))) {
		FUNC6(sbi, "A bug case: need to run fsck");
		return 1;
	}
	return 0;
}