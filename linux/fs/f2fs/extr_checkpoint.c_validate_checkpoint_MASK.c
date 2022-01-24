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
struct page {int dummy; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  cp_pack_total_block_count; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,char*,int) ; 
 int FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct f2fs_checkpoint**,struct page**,unsigned long long*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC4(struct f2fs_sb_info *sbi,
				block_t cp_addr, unsigned long long *version)
{
	struct page *cp_page_1 = NULL, *cp_page_2 = NULL;
	struct f2fs_checkpoint *cp_block = NULL;
	unsigned long long cur_version = 0, pre_version = 0;
	int err;

	err = FUNC2(sbi, cp_addr, &cp_block,
					&cp_page_1, version);
	if (err)
		return NULL;

	if (FUNC3(cp_block->cp_pack_total_block_count) >
					sbi->blocks_per_seg) {
		FUNC1(sbi, "invalid cp_pack_total_block_count:%u",
			  FUNC3(cp_block->cp_pack_total_block_count));
		goto invalid_cp;
	}
	pre_version = *version;

	cp_addr += FUNC3(cp_block->cp_pack_total_block_count) - 1;
	err = FUNC2(sbi, cp_addr, &cp_block,
					&cp_page_2, version);
	if (err)
		goto invalid_cp;
	cur_version = *version;

	if (cur_version == pre_version) {
		*version = cur_version;
		FUNC0(cp_page_2, 1);
		return cp_page_1;
	}
	FUNC0(cp_page_2, 1);
invalid_cp:
	FUNC0(cp_page_1, 1);
	return NULL;
}