#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tree_balance {int* insert_size; int* blknum; int /*<<< orphan*/ ** FEB; int /*<<< orphan*/  tb_sb; int /*<<< orphan*/ ** CFR; int /*<<< orphan*/ ** CFL; int /*<<< orphan*/ ** FR; int /*<<< orphan*/ ** FL; int /*<<< orphan*/ ** R; int /*<<< orphan*/ ** L; TYPE_1__* tb_path; int /*<<< orphan*/  transaction_handle; int /*<<< orphan*/  fs_gen; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {scalar_t__ cur_tb; int /*<<< orphan*/  s_fix_nodes; } ;
struct TYPE_7__ {int pos_in_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int CARRY_ON ; 
 int DC_SIZE ; 
 scalar_t__ FUNC2 (struct tree_balance*) ; 
 int KEY_SIZE ; 
 int MAX_FEB_SIZE ; 
 int MAX_HEIGHT ; 
#define  M_CUT 131 
#define  M_DELETE 130 
#define  M_INSERT 129 
#define  M_PASTE 128 
 int NO_BALANCING_NEEDED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 struct buffer_head* FUNC5 (TYPE_1__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int REPEAT_SEARCH ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int FUNC13 (int,struct tree_balance*,int,int,int,struct item_head*,void const*) ; 
 int FUNC14 (struct tree_balance*,int) ; 
 int FUNC15 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tree_balance*) ; 
 int FUNC18 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (struct tree_balance*) ; 

int FUNC30(int op_mode, struct tree_balance *tb,
	      struct item_head *ins_ih, const void *data)
{
	int ret, h, item_num = FUNC4(tb->tb_path);
	int pos_in_item;

	/*
	 * we set wait_tb_buffers_run when we have to restore any dirty
	 * bits cleared during wait_tb_buffers_run
	 */
	int wait_tb_buffers_run = 0;
	struct buffer_head *tbS0 = FUNC5(tb->tb_path);

	++FUNC6(tb->tb_sb)->s_fix_nodes;

	pos_in_item = tb->tb_path->pos_in_item;

	tb->fs_gen = FUNC16(tb->tb_sb);

	/*
	 * we prepare and log the super here so it will already be in the
	 * transaction when do_balance needs to change it.
	 * This way do_balance won't have to schedule when trying to prepare
	 * the super for logging
	 */
	FUNC25(tb->tb_sb,
				     FUNC8(tb->tb_sb), 1);
	FUNC19(tb->transaction_handle,
			   FUNC8(tb->tb_sb));
	if (FUNC2(tb))
		return REPEAT_SEARCH;

	/* if it possible in indirect_to_direct conversion */
	if (FUNC11(tbS0)) {
		int depth = FUNC28(tb->tb_sb);
		FUNC9(tbS0);
		FUNC27(tb->tb_sb, depth);
		if (FUNC2(tb))
			return REPEAT_SEARCH;
	}
#ifdef CONFIG_REISERFS_CHECK
	if (REISERFS_SB(tb->tb_sb)->cur_tb) {
		print_cur_tb("fix_nodes");
		reiserfs_panic(tb->tb_sb, "PAP-8305",
			       "there is pending do_balance");
	}

	if (!buffer_uptodate(tbS0) || !B_IS_IN_TREE(tbS0))
		reiserfs_panic(tb->tb_sb, "PAP-8320", "S[0] (%b %z) is "
			       "not uptodate at the beginning of fix_nodes "
			       "or not in tree (mode %c)",
			       tbS0, tbS0, op_mode);

	/* Check parameters. */
	switch (op_mode) {
	case M_INSERT:
		if (item_num <= 0 || item_num > B_NR_ITEMS(tbS0))
			reiserfs_panic(tb->tb_sb, "PAP-8330", "Incorrect "
				       "item number %d (in S0 - %d) in case "
				       "of insert", item_num,
				       B_NR_ITEMS(tbS0));
		break;
	case M_PASTE:
	case M_DELETE:
	case M_CUT:
		if (item_num < 0 || item_num >= B_NR_ITEMS(tbS0)) {
			print_block(tbS0, 0, -1, -1);
			reiserfs_panic(tb->tb_sb, "PAP-8335", "Incorrect "
				       "item number(%d); mode = %c "
				       "insert_size = %d",
				       item_num, op_mode,
				       tb->insert_size[0]);
		}
		break;
	default:
		reiserfs_panic(tb->tb_sb, "PAP-8340", "Incorrect mode "
			       "of operation");
	}
#endif

	if (FUNC17(tb) == REPEAT_SEARCH)
		/* FIXME: maybe -ENOMEM when tb->vn_buf == 0? Now just repeat */
		return REPEAT_SEARCH;

	/* Starting from the leaf level; for all levels h of the tree. */
	for (h = 0; h < MAX_HEIGHT && tb->insert_size[h]; h++) {
		ret = FUNC14(tb, h);
		if (ret != CARRY_ON)
			goto repeat;

		ret = FUNC13(op_mode, tb, h, item_num,
				    pos_in_item, ins_ih, data);
		if (ret != CARRY_ON) {
			if (ret == NO_BALANCING_NEEDED) {
				/* No balancing for higher levels needed. */
				ret = FUNC18(tb, h);
				if (ret != CARRY_ON)
					goto repeat;
				if (h != MAX_HEIGHT - 1)
					tb->insert_size[h + 1] = 0;
				/*
				 * ok, analysis and resource gathering
				 * are complete
				 */
				break;
			}
			goto repeat;
		}

		ret = FUNC18(tb, h);
		if (ret != CARRY_ON)
			goto repeat;

		/*
		 * No disk space, or schedule occurred and analysis may be
		 * invalid and needs to be redone.
		 */
		ret = FUNC15(tb, h);
		if (ret != CARRY_ON)
			goto repeat;

		/*
		 * We have a positive insert size but no nodes exist on this
		 * level, this means that we are creating a new root.
		 */
		if (!FUNC3(tb->tb_path, h)) {

			FUNC7(tb->blknum[h] != 1,
			       "PAP-8350: creating new empty root");

			if (h < MAX_HEIGHT - 1)
				tb->insert_size[h + 1] = 0;
		} else if (!FUNC3(tb->tb_path, h + 1)) {
			/*
			 * The tree needs to be grown, so this node S[h]
			 * which is the root node is split into two nodes,
			 * and a new node (S[h+1]) will be created to
			 * become the root node.
			 */
			if (tb->blknum[h] > 1) {

				FUNC7(h == MAX_HEIGHT - 1,
				       "PAP-8355: attempt to create too high of a tree");

				tb->insert_size[h + 1] =
				    (DC_SIZE +
				     KEY_SIZE) * (tb->blknum[h] - 1) +
				    DC_SIZE;
			} else if (h < MAX_HEIGHT - 1)
				tb->insert_size[h + 1] = 0;
		} else
			tb->insert_size[h + 1] =
			    (DC_SIZE + KEY_SIZE) * (tb->blknum[h] - 1);
	}

	ret = FUNC29(tb);
	if (ret == CARRY_ON) {
		if (FUNC2(tb)) {
			wait_tb_buffers_run = 1;
			ret = REPEAT_SEARCH;
			goto repeat;
		} else {
			return CARRY_ON;
		}
	} else {
		wait_tb_buffers_run = 1;
		goto repeat;
	}

repeat:
	/*
	 * fix_nodes was unable to perform its calculation due to
	 * filesystem got changed under us, lack of free disk space or i/o
	 * failure. If the first is the case - the search will be
	 * repeated. For now - free all resources acquired so far except
	 * for the new allocated nodes
	 */
	{
		int i;

		/* Release path buffers. */
		if (wait_tb_buffers_run) {
			FUNC21(tb->tb_sb, tb->tb_path);
		} else {
			FUNC20(tb->tb_path);
		}
		/* brelse all resources collected for balancing */
		for (i = 0; i < MAX_HEIGHT; i++) {
			if (wait_tb_buffers_run) {
				FUNC26(tb->tb_sb,
								 tb->L[i]);
				FUNC26(tb->tb_sb,
								 tb->R[i]);
				FUNC26(tb->tb_sb,
								 tb->FL[i]);
				FUNC26(tb->tb_sb,
								 tb->FR[i]);
				FUNC26(tb->tb_sb,
								 tb->
								 CFL[i]);
				FUNC26(tb->tb_sb,
								 tb->
								 CFR[i]);
			}

			FUNC10(tb->L[i]);
			FUNC10(tb->R[i]);
			FUNC10(tb->FL[i]);
			FUNC10(tb->FR[i]);
			FUNC10(tb->CFL[i]);
			FUNC10(tb->CFR[i]);

			tb->L[i] = NULL;
			tb->R[i] = NULL;
			tb->FL[i] = NULL;
			tb->FR[i] = NULL;
			tb->CFL[i] = NULL;
			tb->CFR[i] = NULL;
		}

		if (wait_tb_buffers_run) {
			for (i = 0; i < MAX_FEB_SIZE; i++) {
				if (tb->FEB[i])
					FUNC26
					    (tb->tb_sb, tb->FEB[i]);
			}
		}
		return ret;
	}

}