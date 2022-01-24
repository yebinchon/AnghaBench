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
struct tree_balance {scalar_t__* insert_size; int* lnum; int lbytes; int* blknum; int /*<<< orphan*/  tb_sb; scalar_t__* CFL; int /*<<< orphan*/ * rkey; scalar_t__* CFR; int /*<<< orphan*/ * lkey; int /*<<< orphan*/ * rnum; int /*<<< orphan*/  item_pos; int /*<<< orphan*/  pos_in_item; scalar_t__ zeroes_num; TYPE_1__* tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pos_in_item; } ;

/* Variables and functions */
 int M_INSERT ; 
 int M_PASTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct buffer_head* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  UNFM_P_SIZE ; 
 int /*<<< orphan*/ * balance_at ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,struct item_head*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_balance*,struct item_head*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_balance*,struct item_head*,char const*,struct item_head*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*,struct item_head*,char const*,int) ; 
 int FUNC8 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tree_balance*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct tree_balance*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC18(struct tree_balance *tb, struct item_head *ih,
			const char *body, int flag,
			struct item_head *insert_key,
			struct buffer_head **insert_ptr)
{
	struct buffer_head *tbS0 = FUNC1(tb->tb_path);

	FUNC2(tb->tb_sb, balance_at[0]);

	/* Make balance in case insert_size[0] < 0 */
	if (tb->insert_size[0] < 0)
		return FUNC8(tb, flag);

	tb->item_pos = FUNC0(tb->tb_path),
	tb->pos_in_item = tb->tb_path->pos_in_item,
	tb->zeroes_num = 0;
	if (flag == M_INSERT && !body)
		tb->zeroes_num = FUNC11(ih);

	/*
	 * for indirect item pos_in_item is measured in unformatted node
	 * pointers. Recalculate to bytes
	 */
	if (flag != M_INSERT
	    && FUNC13(FUNC14(tbS0, tb->item_pos)))
		tb->pos_in_item *= UNFM_P_SIZE;

	body += FUNC5(tb, ih, body, flag);

	/* tb->lnum[0] > 0 */
	/* Calculate new item position */
	tb->item_pos -= (tb->lnum[0] - ((tb->lbytes != -1) ? 1 : 0));

	FUNC7(tb, ih, body, flag);

	/* tb->rnum[0] > 0 */
	FUNC3(tb->blknum[0] > 3,
	       "PAP-12180: blknum can not be %d. It must be <= 3", tb->blknum[0]);
	FUNC3(tb->blknum[0] < 0,
	       "PAP-12185: blknum can not be %d. It must be >= 0", tb->blknum[0]);

	/*
	 * if while adding to a node we discover that it is possible to split
	 * it in two, and merge the left part into the left neighbor and the
	 * right part into the right neighbor, eliminating the node
	 */
	if (tb->blknum[0] == 0) {	/* node S[0] is empty now */

		FUNC3(!tb->lnum[0] || !tb->rnum[0],
		       "PAP-12190: lnum and rnum must not be zero");
		/*
		 * if insertion was done before 0-th position in R[0], right
		 * delimiting key of the tb->L[0]'s and left delimiting key are
		 * not set correctly
		 */
		if (tb->CFL[0]) {
			if (!tb->CFR[0])
				FUNC17(tb->tb_sb, "vs-12195",
					       "CFR not initialized");
			FUNC9(FUNC12(tb->CFL[0], tb->lkey[0]),
				 FUNC12(tb->CFR[0], tb->rkey[0]));
			FUNC10(tb, tb->CFL[0], 0);
		}

		FUNC16(tb, tbS0);
		return 0;
	}

	FUNC6(tb, ih, body, insert_key, insert_ptr, flag);

	FUNC4(tb, ih, body, flag);

#ifdef CONFIG_REISERFS_CHECK
	if (flag == M_PASTE && tb->insert_size[0]) {
		print_cur_tb("12290");
		reiserfs_panic(tb->tb_sb,
			       "PAP-12290", "insert_size is still not 0 (%d)",
			       tb->insert_size[0]);
	}
#endif

	/* Leaf level of the tree is balanced (end of balance_leaf) */
	return 0;
}