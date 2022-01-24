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
struct tree_balance {int* lnum; int* rnum; int lbytes; int rbytes; struct buffer_head** L; struct buffer_head** R; int /*<<< orphan*/ * rkey; int /*<<< orphan*/ * CFR; struct buffer_head** FR; int /*<<< orphan*/ * lkey; int /*<<< orphan*/ * CFL; int /*<<< orphan*/  tb_path; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  LEAF_FROM_L_TO_R ; 
 int /*<<< orphan*/  LEAF_FROM_R_TO_L ; 
 int /*<<< orphan*/  LEAF_FROM_S_TO_L ; 
 int /*<<< orphan*/  LEAF_FROM_S_TO_R ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tree_balance*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_balance*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC10(struct tree_balance *tb)
{
	struct buffer_head *tbS0 = FUNC3(tb->tb_path);
	int n = FUNC0(tbS0);

	/* L[0] must be joined with S[0] */
	if (tb->lnum[0] == -1) {
		/* R[0] must be also joined with S[0] */
		if (tb->rnum[0] == -1) {
			if (tb->FR[0] == FUNC2(tb->tb_path, 0)) {
				/*
				 * all contents of all the
				 * 3 buffers will be in L[0]
				 */
				if (FUNC1(tb->tb_path, 1) == 0 &&
				    1 < FUNC0(tb->FR[0]))
					FUNC9(tb, tb->CFL[0],
						    tb->lkey[0], tb->FR[0], 1);

				FUNC5(LEAF_FROM_S_TO_L, tb, n, -1,
						NULL);
				FUNC5(LEAF_FROM_R_TO_L, tb,
						FUNC0(tb->R[0]), -1,
						NULL);

				FUNC8(tb, tbS0);
				FUNC8(tb, tb->R[0]);

				return 0;
			}

			/* all contents of all the 3 buffers will be in R[0] */
			FUNC5(LEAF_FROM_S_TO_R, tb, n, -1, NULL);
			FUNC5(LEAF_FROM_L_TO_R, tb,
					FUNC0(tb->L[0]), -1, NULL);

			/* right_delimiting_key is correct in R[0] */
			FUNC9(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

			FUNC8(tb, tbS0);
			FUNC8(tb, tb->L[0]);

			return -1;
		}

		FUNC4(tb->rnum[0] != 0,
		       "PAP-12045: rnum must be 0 (%d)", tb->rnum[0]);
		/* all contents of L[0] and S[0] will be in L[0] */
		FUNC6(tb, n, -1);

		FUNC8(tb, tbS0);

		return 0;
	}

	/*
	 * a part of contents of S[0] will be in L[0] and
	 * the rest part of S[0] will be in R[0]
	 */

	FUNC4((tb->lnum[0] + tb->rnum[0] < n) ||
	       (tb->lnum[0] + tb->rnum[0] > n + 1),
	       "PAP-12050: rnum(%d) and lnum(%d) and item "
	       "number(%d) in S[0] are not consistent",
	       tb->rnum[0], tb->lnum[0], n);
	FUNC4((tb->lnum[0] + tb->rnum[0] == n) &&
	       (tb->lbytes != -1 || tb->rbytes != -1),
	       "PAP-12055: bad rbytes (%d)/lbytes (%d) "
	       "parameters when items are not split",
	       tb->rbytes, tb->lbytes);
	FUNC4((tb->lnum[0] + tb->rnum[0] == n + 1) &&
	       (tb->lbytes < 1 || tb->rbytes != -1),
	       "PAP-12060: bad rbytes (%d)/lbytes (%d) "
	       "parameters when items are split",
	       tb->rbytes, tb->lbytes);

	FUNC6(tb, tb->lnum[0], tb->lbytes);
	FUNC7(tb, tb->rnum[0], tb->rbytes);

	FUNC8(tb, tbS0);

	return 0;
}