#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_suballoc_result {scalar_t__ sr_blkno; int sr_bits; scalar_t__ sr_bg_blkno; int /*<<< orphan*/  sr_bit_offset; int /*<<< orphan*/  sr_bg_stable_blkno; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_chain; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_bits_given; TYPE_2__* ac_inode; TYPE_3__* ac_bh; struct ocfs2_suballoc_result* ac_find_loc_priv; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  bg_allocs; } ;
struct TYPE_12__ {TYPE_1__ alloc_stats; } ;
struct TYPE_11__ {scalar_t__ b_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,struct ocfs2_group_desc*,struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*,struct ocfs2_dinode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,int) ; 

int FUNC12(handle_t *handle,
				 struct inode *dir,
				 struct ocfs2_alloc_context *ac,
				 u64 *suballoc_loc,
				 u16 *suballoc_bit,
				 u64 di_blkno)
{
	int ret;
	u16 chain;
	struct ocfs2_suballoc_result *res = ac->ac_find_loc_priv;
	struct buffer_head *bg_bh = NULL;
	struct ocfs2_group_desc *bg;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) ac->ac_bh->b_data;

	/*
	 * Since di_blkno is being passed back in, we check for any
	 * inconsistencies which may have happened between
	 * calls. These are code bugs as di_blkno is not expected to
	 * change once returned from ocfs2_find_new_inode_loc()
	 */
	FUNC0(res->sr_blkno != di_blkno);

	ret = FUNC8(ac->ac_inode, di,
					  res->sr_bg_stable_blkno, &bg_bh);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	bg = (struct ocfs2_group_desc *) bg_bh->b_data;
	chain = FUNC4(bg->bg_chain);

	ret = FUNC6(ac->ac_inode, handle,
					       ac->ac_bh, res->sr_bits,
					       chain);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC7(handle,
					 ac->ac_inode,
					 bg,
					 bg_bh,
					 res->sr_bit_offset,
					 res->sr_bits);
	if (ret < 0) {
		FUNC9(ac->ac_inode,
					       ac->ac_bh, res->sr_bits, chain);
		FUNC5(ret);
		goto out;
	}

	FUNC11((unsigned long long)di_blkno,
					   res->sr_bits);

	FUNC2(&FUNC1(ac->ac_inode->i_sb)->alloc_stats.bg_allocs);

	FUNC0(res->sr_bits != 1);

	*suballoc_loc = res->sr_bg_blkno;
	*suballoc_bit = res->sr_bit_offset;
	ac->ac_bits_given++;
	FUNC10(dir, ac);

out:
	FUNC3(bg_bh);

	return ret;
}