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
struct f2fs_sit_entry {int /*<<< orphan*/  valid_map; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int FUNC0 (struct f2fs_sit_entry*) ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(struct f2fs_sb_info *sbi,
		int segno, struct f2fs_sit_entry *raw_sit)
{
	bool is_valid  = FUNC6(0, raw_sit->valid_map) ? true : false;
	int valid_blocks = 0;
	int cur_pos = 0, next_pos;

	/* check bitmap with valid block count */
	do {
		if (is_valid) {
			next_pos = FUNC4(&raw_sit->valid_map,
					sbi->blocks_per_seg,
					cur_pos);
			valid_blocks += next_pos - cur_pos;
		} else
			next_pos = FUNC3(&raw_sit->valid_map,
					sbi->blocks_per_seg,
					cur_pos);
		cur_pos = next_pos;
		is_valid = !is_valid;
	} while (cur_pos < sbi->blocks_per_seg);

	if (FUNC7(FUNC0(raw_sit) != valid_blocks)) {
		FUNC2(sbi, "Mismatch valid blocks %d vs. %d",
			 FUNC0(raw_sit), valid_blocks);
		FUNC5(sbi, SBI_NEED_FSCK);
		return -EFSCORRUPTED;
	}

	/* check segment usage, and check boundary of a given segment number */
	if (FUNC7(FUNC0(raw_sit) > sbi->blocks_per_seg
					|| segno > FUNC1(sbi) - 1)) {
		FUNC2(sbi, "Wrong valid blocks %d or segno %u",
			 FUNC0(raw_sit), segno);
		FUNC5(sbi, SBI_NEED_FSCK);
		return -EFSCORRUPTED;
	}
	return 0;
}