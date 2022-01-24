#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct f2fs_super_block {int /*<<< orphan*/  log_blocks_per_seg; int /*<<< orphan*/  segment_count_nat; int /*<<< orphan*/  nat_blkaddr; } ;
struct f2fs_sb_info {int total_valid_node_count; TYPE_1__* ckpt; } ;
struct f2fs_nm_info {unsigned int nat_blkaddr; unsigned int nat_blocks; int max_nid; int available_nids; unsigned int next_scan_nid; void* nat_bitmap_mir; int /*<<< orphan*/  bitmap_size; void* nat_bitmap; int /*<<< orphan*/  nat_tree_lock; int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  build_lock; int /*<<< orphan*/  nat_list_lock; int /*<<< orphan*/  nat_entries; int /*<<< orphan*/  nat_set_root; int /*<<< orphan*/  nat_root; int /*<<< orphan*/  free_nid_list; int /*<<< orphan*/  free_nid_root; int /*<<< orphan*/  dirty_nats_ratio; int /*<<< orphan*/  ra_nid_pages; int /*<<< orphan*/  ram_thresh; scalar_t__ nat_cnt; scalar_t__* nid_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_free_nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_DIRTY_NAT_RATIO_THRESHOLD ; 
 int /*<<< orphan*/  DEF_RAM_THRESHOLD ; 
 int /*<<< orphan*/  DEF_RA_NID_PAGES ; 
 int EFAULT ; 
 int ENOMEM ; 
 struct f2fs_super_block* FUNC0 (struct f2fs_sb_info*) ; 
 int F2FS_RESERVED_NODE_NUM ; 
 size_t FREE_NID ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAT_BITMAP ; 
 int NAT_ENTRY_PER_BLOCK ; 
 struct f2fs_nm_info* FUNC3 (struct f2fs_sb_info*) ; 
 size_t PREALLOC_NID ; 
 unsigned char* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct f2fs_sb_info *sbi)
{
	struct f2fs_super_block *sb_raw = FUNC0(sbi);
	struct f2fs_nm_info *nm_i = FUNC3(sbi);
	unsigned char *version_bitmap;
	unsigned int nat_segs;
	int err;

	nm_i->nat_blkaddr = FUNC9(sb_raw->nat_blkaddr);

	/* segment_count_nat includes pair segment so divide to 2. */
	nat_segs = FUNC9(sb_raw->segment_count_nat) >> 1;
	nm_i->nat_blocks = nat_segs << FUNC9(sb_raw->log_blocks_per_seg);
	nm_i->max_nid = NAT_ENTRY_PER_BLOCK * nm_i->nat_blocks;

	/* not used nids: 0, node, meta, (and root counted as valid node) */
	nm_i->available_nids = nm_i->max_nid - sbi->total_valid_node_count -
						F2FS_RESERVED_NODE_NUM;
	nm_i->nid_cnt[FREE_NID] = 0;
	nm_i->nid_cnt[PREALLOC_NID] = 0;
	nm_i->nat_cnt = 0;
	nm_i->ram_thresh = DEF_RAM_THRESHOLD;
	nm_i->ra_nid_pages = DEF_RA_NID_PAGES;
	nm_i->dirty_nats_ratio = DEF_DIRTY_NAT_RATIO_THRESHOLD;

	FUNC2(&nm_i->free_nid_root, GFP_ATOMIC);
	FUNC1(&nm_i->free_nid_list);
	FUNC2(&nm_i->nat_root, GFP_NOIO);
	FUNC2(&nm_i->nat_set_root, GFP_NOIO);
	FUNC1(&nm_i->nat_entries);
	FUNC11(&nm_i->nat_list_lock);

	FUNC10(&nm_i->build_lock);
	FUNC11(&nm_i->nid_list_lock);
	FUNC7(&nm_i->nat_tree_lock);

	nm_i->next_scan_nid = FUNC9(sbi->ckpt->next_free_nid);
	nm_i->bitmap_size = FUNC5(sbi, NAT_BITMAP);
	version_bitmap = FUNC4(sbi, NAT_BITMAP);
	if (!version_bitmap)
		return -EFAULT;

	nm_i->nat_bitmap = FUNC8(version_bitmap, nm_i->bitmap_size,
					GFP_KERNEL);
	if (!nm_i->nat_bitmap)
		return -ENOMEM;

	err = FUNC6(sbi);
	if (err)
		return err;

#ifdef CONFIG_F2FS_CHECK_FS
	nm_i->nat_bitmap_mir = kmemdup(version_bitmap, nm_i->bitmap_size,
					GFP_KERNEL);
	if (!nm_i->nat_bitmap_mir)
		return -ENOMEM;
#endif

	return 0;
}