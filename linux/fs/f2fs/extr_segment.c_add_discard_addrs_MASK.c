#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seg_entry {int valid_blocks; scalar_t__ discard_map; scalar_t__ ckpt_valid_map; scalar_t__ cur_valid_map; } ;
struct list_head {int dummy; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct discard_entry {scalar_t__ discard_map; int /*<<< orphan*/  list; int /*<<< orphan*/  start_blkaddr; } ;
struct cp_control {int reason; unsigned int trim_minlen; int /*<<< orphan*/  trim_start; } ;
struct TYPE_6__ {unsigned long* tmp_map; } ;
struct TYPE_5__ {TYPE_1__* dcc_info; } ;
struct TYPE_4__ {scalar_t__ nr_discards; scalar_t__ max_discards; struct list_head entry_list; } ;

/* Variables and functions */
 int CP_DISCARD ; 
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 TYPE_3__* FUNC0 (struct f2fs_sb_info*) ; 
 int SIT_VBLOCK_MAP_SIZE ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned long*,int,unsigned int) ; 
 unsigned int FUNC4 (unsigned long*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 int /*<<< orphan*/  discard_entry_slab ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 struct discard_entry* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 struct seg_entry* FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static bool FUNC11(struct f2fs_sb_info *sbi, struct cp_control *cpc,
							bool check_only)
{
	int entries = SIT_VBLOCK_MAP_SIZE / sizeof(unsigned long);
	int max_blocks = sbi->blocks_per_seg;
	struct seg_entry *se = FUNC9(sbi, cpc->trim_start);
	unsigned long *cur_map = (unsigned long *)se->cur_valid_map;
	unsigned long *ckpt_map = (unsigned long *)se->ckpt_valid_map;
	unsigned long *discard_map = (unsigned long *)se->discard_map;
	unsigned long *dmap = FUNC0(sbi)->tmp_map;
	unsigned int start = 0, end = -1;
	bool force = (cpc->reason & CP_DISCARD);
	struct discard_entry *de = NULL;
	struct list_head *head = &FUNC1(sbi)->dcc_info->entry_list;
	int i;

	if (se->valid_blocks == max_blocks || !FUNC6(sbi))
		return false;

	if (!force) {
		if (!FUNC8(sbi) || !se->valid_blocks ||
			FUNC1(sbi)->dcc_info->nr_discards >=
				FUNC1(sbi)->dcc_info->max_discards)
			return false;
	}

	/* SIT_VBLOCK_MAP_SIZE should be multiple of sizeof(unsigned long) */
	for (i = 0; i < entries; i++)
		dmap[i] = force ? ~ckpt_map[i] & ~discard_map[i] :
				(cur_map[i] ^ ckpt_map[i]) & ckpt_map[i];

	while (force || FUNC1(sbi)->dcc_info->nr_discards <=
				FUNC1(sbi)->dcc_info->max_discards) {
		start = FUNC3(dmap, max_blocks, end + 1);
		if (start >= max_blocks)
			break;

		end = FUNC4(dmap, max_blocks, start + 1);
		if (force && start && end != max_blocks
					&& (end - start) < cpc->trim_minlen)
			continue;

		if (check_only)
			return true;

		if (!de) {
			de = FUNC7(discard_entry_slab,
								GFP_F2FS_ZERO);
			de->start_blkaddr = FUNC2(sbi, cpc->trim_start);
			FUNC10(&de->list, head);
		}

		for (i = start; i < end; i++)
			FUNC5(i, (void *)de->discard_map);

		FUNC1(sbi)->dcc_info->nr_discards += end - start;
	}
	return false;
}