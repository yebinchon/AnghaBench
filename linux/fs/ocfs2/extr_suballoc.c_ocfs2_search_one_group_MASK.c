#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_suballoc_result {int /*<<< orphan*/  sr_bits; int /*<<< orphan*/  sr_bit_offset; int /*<<< orphan*/  sr_bg_stable_blkno; int /*<<< orphan*/  sr_bg_blkno; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_chain; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int (* ac_group_search ) (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_suballoc_result*) ;TYPE_1__* ac_bh; scalar_t__ ac_find_loc_only; int /*<<< orphan*/  ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_alloc_context*,struct ocfs2_group_desc*,struct ocfs2_suballoc_result*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_suballoc_result*) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_alloc_context *ac,
				  handle_t *handle,
				  u32 bits_wanted,
				  u32 min_bits,
				  struct ocfs2_suballoc_result *res,
				  u16 *bits_left)
{
	int ret;
	struct buffer_head *group_bh = NULL;
	struct ocfs2_group_desc *gd;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)ac->ac_bh->b_data;
	struct inode *alloc_inode = ac->ac_inode;

	ret = FUNC6(alloc_inode, di,
					  res->sr_bg_blkno, &group_bh);
	if (ret < 0) {
		FUNC2(ret);
		return ret;
	}

	gd = (struct ocfs2_group_desc *) group_bh->b_data;
	ret = ac->ac_group_search(alloc_inode, group_bh, bits_wanted, min_bits,
				  ac->ac_max_block, res);
	if (ret < 0) {
		if (ret != -ENOSPC)
			FUNC2(ret);
		goto out;
	}

	if (!ret)
		FUNC4(ac, gd, res);

	/*
	 * sr_bg_blkno might have been changed by
	 * ocfs2_bg_discontig_fix_result
	 */
	res->sr_bg_stable_blkno = group_bh->b_blocknr;

	if (ac->ac_find_loc_only)
		goto out_loc_only;

	ret = FUNC3(alloc_inode, handle, ac->ac_bh,
					       res->sr_bits,
					       FUNC1(gd->bg_chain));
	if (ret < 0) {
		FUNC2(ret);
		goto out;
	}

	ret = FUNC5(handle, alloc_inode, gd, group_bh,
					 res->sr_bit_offset, res->sr_bits);
	if (ret < 0) {
		FUNC7(alloc_inode, ac->ac_bh,
					       res->sr_bits,
					       FUNC1(gd->bg_chain));
		FUNC2(ret);
	}

out_loc_only:
	*bits_left = FUNC1(gd->bg_free_bits_count);

out:
	FUNC0(group_bh);

	return ret;
}