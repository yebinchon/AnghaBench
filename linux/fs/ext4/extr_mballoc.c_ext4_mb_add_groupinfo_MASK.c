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
struct super_block {int s_blocksize; int /*<<< orphan*/  s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {struct ext4_group_info*** s_group_info; } ;
struct ext4_group_info {int bb_largest_free_order; int /*<<< orphan*/ * bb_bitmap; int /*<<< orphan*/  bb_free_root; int /*<<< orphan*/  alloc_sem; int /*<<< orphan*/  bb_prealloc_list; int /*<<< orphan*/  bb_free; int /*<<< orphan*/  bb_state; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  size_t ext4_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_BG_BLOCK_UNINIT ; 
 size_t FUNC1 (struct super_block*) ; 
 size_t FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_NEED_INIT_BIT ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,size_t,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 struct buffer_head* FUNC11 (struct super_block*,size_t) ; 
 struct kmem_cache* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_group_info**) ; 
 void* FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct ext4_group_info* FUNC16 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC20(struct super_block *sb, ext4_group_t group,
			  struct ext4_group_desc *desc)
{
	int i;
	int metalen = 0;
	struct ext4_sb_info *sbi = FUNC3(sb);
	struct ext4_group_info **meta_group_info;
	struct kmem_cache *cachep = FUNC12(sb->s_blocksize_bits);

	/*
	 * First check if this group is the first of a reserved block.
	 * If it's true, we have to allocate a new table of pointers
	 * to ext4_group_info structures
	 */
	if (group % FUNC1(sb) == 0) {
		metalen = sizeof(*meta_group_info) <<
			FUNC2(sb);
		meta_group_info = FUNC15(metalen, GFP_NOFS);
		if (meta_group_info == NULL) {
			FUNC10(sb, KERN_ERR, "can't allocate mem "
				 "for a buddy group");
			goto exit_meta_group_info;
		}
		sbi->s_group_info[group >> FUNC2(sb)] =
			meta_group_info;
	}

	meta_group_info =
		sbi->s_group_info[group >> FUNC2(sb)];
	i = group & (FUNC1(sb) - 1);

	meta_group_info[i] = FUNC16(cachep, GFP_NOFS);
	if (meta_group_info[i] == NULL) {
		FUNC10(sb, KERN_ERR, "can't allocate buddy mem");
		goto exit_group_info;
	}
	FUNC19(EXT4_GROUP_INFO_NEED_INIT_BIT,
		&(meta_group_info[i]->bb_state));

	/*
	 * initialize bb_free to be able to skip
	 * empty groups without initialization
	 */
	if (FUNC9(sb) &&
	    (desc->bg_flags & FUNC6(EXT4_BG_BLOCK_UNINIT))) {
		meta_group_info[i]->bb_free =
			FUNC7(sb, group, desc);
	} else {
		meta_group_info[i]->bb_free =
			FUNC8(sb, desc);
	}

	FUNC4(&meta_group_info[i]->bb_prealloc_list);
	FUNC13(&meta_group_info[i]->alloc_sem);
	meta_group_info[i]->bb_free_root = RB_ROOT;
	meta_group_info[i]->bb_largest_free_order = -1;  /* uninit */

#ifdef DOUBLE_CHECK
	{
		struct buffer_head *bh;
		meta_group_info[i]->bb_bitmap =
			kmalloc(sb->s_blocksize, GFP_NOFS);
		BUG_ON(meta_group_info[i]->bb_bitmap == NULL);
		bh = ext4_read_block_bitmap(sb, group);
		BUG_ON(IS_ERR_OR_NULL(bh));
		memcpy(meta_group_info[i]->bb_bitmap, bh->b_data,
			sb->s_blocksize);
		put_bh(bh);
	}
#endif

	return 0;

exit_group_info:
	/* If a meta_group_info table has been allocated, release it now */
	if (group % FUNC1(sb) == 0) {
		FUNC14(sbi->s_group_info[group >> FUNC2(sb)]);
		sbi->s_group_info[group >> FUNC2(sb)] = NULL;
	}
exit_meta_group_info:
	return -ENOMEM;
}