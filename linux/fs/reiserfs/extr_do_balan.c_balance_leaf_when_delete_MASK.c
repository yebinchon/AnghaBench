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
struct tree_balance {int* FR; int* blknum; int* rnum; scalar_t__* lnum; int /*<<< orphan*/  tb_path; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct buffer_head*) ; 
 scalar_t__ DISK_LEAF_NODE_LEVEL ; 
 int M_CUT ; 
 int M_DELETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*) ; 
 int FUNC8 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tree_balance*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC12(struct tree_balance *tb, int flag)
{
	struct buffer_head *tbS0 = FUNC4(tb->tb_path);
	struct buffer_info bi;
	int n;

	FUNC5(tb->FR[0] && FUNC1(tb->FR[0]) != DISK_LEAF_NODE_LEVEL + 1,
	       "vs- 12000: level: wrong FR %z", tb->FR[0]);
	FUNC5(tb->blknum[0] > 1,
	       "PAP-12005: tb->blknum == %d, can not be > 1", tb->blknum[0]);
	FUNC5(!tb->blknum[0] && !FUNC3(tb->tb_path, 0),
	       "PAP-12010: tree can not be empty");

	FUNC9(tb, &bi);

	/* Delete or truncate the item */

	FUNC0(flag != M_DELETE && flag != M_CUT);
	if (flag == M_DELETE)
		FUNC7(tb);
	else /* M_CUT */
		FUNC6(tb);


	/*
	 * the rule is that no shifting occurs unless by shifting
	 * a node can be freed
	 */
	n = FUNC2(tbS0);


	/* L[0] takes part in balancing */
	if (tb->lnum[0])
		return FUNC8(tb);

	if (tb->rnum[0] == -1) {
		/* all contents of R[0] and S[0] will be in R[0] */
		FUNC10(tb, n, -1);
		FUNC11(tb, tbS0);
		return 0;
	}

	FUNC5(tb->rnum[0],
	       "PAP-12065: bad rnum parameter must be 0 (%d)", tb->rnum[0]);
	return 0;
}