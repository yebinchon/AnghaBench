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
struct tree_balance {int* insert_size; int* blknum; int* lnum; int* rnum; int /*<<< orphan*/  tb_sb; struct buffer_head** R; struct buffer_head** L; int /*<<< orphan*/  tb_path; } ;
struct buffer_info {int /*<<< orphan*/  bi_parent; int /*<<< orphan*/  bi_position; struct buffer_head* bi_bh; struct tree_balance* tb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_sbh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ DC_SIZE ; 
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_L_TO_S ; 
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_R_TO_S ; 
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_S_TO_L ; 
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_S_TO_R ; 
 scalar_t__ KEY_SIZE ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct tree_balance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_info*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tree_balance*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC18(struct tree_balance *tb,
					 int h, int child_pos)
{
	int insert_num;
	int n;
	struct buffer_head *tbSh = FUNC3(tb->tb_path, h);
	struct buffer_info bi;

	insert_num = tb->insert_size[h] / ((int)(DC_SIZE + KEY_SIZE));

	/* delete child-node-pointer(s) together with their left item(s) */
	bi.tb = tb;
	bi.bi_bh = tbSh;
	bi.bi_parent = FUNC5(tb->tb_path, h);
	bi.bi_position = FUNC4(tb->tb_path, h + 1);

	FUNC13(&bi, child_pos, -insert_num);

	FUNC9(tb->blknum[h] > 1,
	       "tb->blknum[%d]=%d when insert_size < 0", h, tb->blknum[h]);

	n = FUNC1(tbSh);

	if (tb->lnum[h] == 0 && tb->rnum[h] == 0) {
		if (tb->blknum[h] == 0) {
			/* node S[h] (root of the tree) is empty now */
			struct buffer_head *new_root;

			FUNC9(n
			       || FUNC0(tbSh) !=
			       FUNC2(tbSh) - DC_SIZE,
			       "buffer must have only 0 keys (%d)", n);
			FUNC9(bi.bi_parent, "root has parent (%p)",
			       bi.bi_parent);

			/* choose a new root */
			if (!tb->L[h - 1] || !FUNC1(tb->L[h - 1]))
				new_root = tb->R[h - 1];
			else
				new_root = tb->L[h - 1];
			/*
			 * switch super block's tree root block
			 * number to the new value */
			FUNC6(tb->tb_sb, new_root->b_blocknr);
			/*REISERFS_SB(tb->tb_sb)->s_rs->s_tree_height --; */
			FUNC7(tb->tb_sb,
					   FUNC10(tb->tb_sb) - 1);

			FUNC12(tb,
						 FUNC8(tb->tb_sb)->s_sbh,
						 1);
			/*&&&&&&&&&&&&&&&&&&&&&& */
			/* use check_internal if new root is an internal node */
			if (h > 1)
				FUNC11(new_root);
			/*&&&&&&&&&&&&&&&&&&&&&& */

			/* do what is needed for buffer thrown from tree */
			FUNC16(tb, tbSh);
			return;
		}
		return;
	}

	/* join S[h] with L[h] */
	if (tb->L[h] && tb->lnum[h] == -FUNC1(tb->L[h]) - 1) {

		FUNC9(tb->rnum[h] != 0,
		       "invalid tb->rnum[%d]==%d when joining S[h] with L[h]",
		       h, tb->rnum[h]);

		FUNC14(INTERNAL_SHIFT_FROM_S_TO_L, tb, h, n + 1);
		FUNC16(tb, tbSh);

		return;
	}

	/* join S[h] with R[h] */
	if (tb->R[h] && tb->rnum[h] == -FUNC1(tb->R[h]) - 1) {
		FUNC9(tb->lnum[h] != 0,
		       "invalid tb->lnum[%d]==%d when joining S[h] with R[h]",
		       h, tb->lnum[h]);

		FUNC15(INTERNAL_SHIFT_FROM_S_TO_R, tb, h, n + 1);

		FUNC16(tb, tbSh);
		return;
	}

	/* borrow from left neighbor L[h] */
	if (tb->lnum[h] < 0) {
		FUNC9(tb->rnum[h] != 0,
		       "wrong tb->rnum[%d]==%d when borrow from L[h]", h,
		       tb->rnum[h]);
		FUNC15(INTERNAL_SHIFT_FROM_L_TO_S, tb, h,
				     -tb->lnum[h]);
		return;
	}

	/* borrow from right neighbor R[h] */
	if (tb->rnum[h] < 0) {
		FUNC9(tb->lnum[h] != 0,
		       "invalid tb->lnum[%d]==%d when borrow from R[h]",
		       h, tb->lnum[h]);
		FUNC14(INTERNAL_SHIFT_FROM_R_TO_S, tb, h, -tb->rnum[h]);	/*tb->S[h], tb->CFR[h], tb->rkey[h], tb->R[h], -tb->rnum[h]); */
		return;
	}

	/* split S[h] into two parts and put them into neighbors */
	if (tb->lnum[h] > 0) {
		FUNC9(tb->rnum[h] == 0 || tb->lnum[h] + tb->rnum[h] != n + 1,
		       "invalid tb->lnum[%d]==%d or tb->rnum[%d]==%d when S[h](item number == %d) is split between them",
		       h, tb->lnum[h], h, tb->rnum[h], n);

		FUNC14(INTERNAL_SHIFT_FROM_S_TO_L, tb, h, tb->lnum[h]);	/*tb->L[h], tb->CFL[h], tb->lkey[h], tb->S[h], tb->lnum[h]); */
		FUNC15(INTERNAL_SHIFT_FROM_S_TO_R, tb, h,
				     tb->rnum[h]);

		FUNC16(tb, tbSh);

		return;
	}
	FUNC17(tb->tb_sb, "ibalance-2",
		       "unexpected tb->lnum[%d]==%d or tb->rnum[%d]==%d",
		       h, tb->lnum[h], h, tb->rnum[h]);
}