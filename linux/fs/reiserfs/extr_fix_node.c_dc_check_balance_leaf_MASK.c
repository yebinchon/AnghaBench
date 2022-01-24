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
struct virtual_node {int vn_nr_item; } ;
struct tree_balance {int* insert_size; int* lnum; int lbytes; int* rnum; int rbytes; int s0num; int /*<<< orphan*/ * FL; int /*<<< orphan*/ * FR; int /*<<< orphan*/  tb_path; struct virtual_node* tb_vn; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int CARRY_ON ; 
 int FUNC1 (struct buffer_head*) ; 
 int NO_BALANCING_NEEDED ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_balance*,int) ; 
 int FUNC9 (struct tree_balance*,int) ; 
 int FUNC10 (struct tree_balance*,int) ; 
 int FUNC11 (struct tree_balance*,int) ; 
 scalar_t__ FUNC12 (struct tree_balance*) ; 
 scalar_t__ FUNC13 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tree_balance*,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC15(struct tree_balance *tb, int h)
{
	struct virtual_node *vn = tb->tb_vn;

	/*
	 * Number of bytes that must be deleted from
	 * (value is negative if bytes are deleted) buffer which
	 * contains node being balanced.  The mnemonic is that the
	 * attempted change in node space used level is levbytes bytes.
	 */
	int levbytes;

	/* the maximal item size */
	int maxsize, ret;

	/*
	 * S0 is the node whose balance is currently being checked,
	 * and F0 is its father.
	 */
	struct buffer_head *S0, *F0;
	int lfree, rfree /* free space in L and R */ ;

	S0 = FUNC2(tb->tb_path, 0);
	F0 = FUNC3(tb->tb_path, 0);

	levbytes = tb->insert_size[h];

	maxsize = FUNC1(S0);	/* maximal possible size of an item */

	if (!F0) {		/* S[0] is the root now. */

		FUNC4(-levbytes >= maxsize - FUNC0(S0),
		       "vs-8240: attempt to create empty buffer tree");

		FUNC14(tb, h, 0, 0, 1, NULL, -1, -1);
		return NO_BALANCING_NEEDED;
	}

	if ((ret = FUNC10(tb, h)) != CARRY_ON)
		return ret;

	/* get free space of neighbors */
	rfree = FUNC11(tb, h);
	lfree = FUNC9(tb, h);

	FUNC8(tb, h);

	/* if 3 leaves can be merge to one, set parameters and return */
	if (FUNC5(tb, lfree, rfree))
		return CARRY_ON;

	/*
	 * determine maximal number of items we can shift to the left/right
	 * neighbor and the maximal number of bytes that can flow to the
	 * left/right neighbor from the left/right most liquid item that
	 * cannot be shifted from S[0] entirely
	 */
	FUNC6(tb, h, lfree);
	FUNC7(tb, h, rfree);

	/* check whether we can merge S with left neighbor. */
	if (tb->lnum[0] >= vn->vn_nr_item && tb->lbytes == -1)
		if (FUNC13(tb, h) || ((tb->rnum[0] - ((tb->rbytes == -1) ? 0 : 1)) < vn->vn_nr_item) ||	/* S can not be merged with R */
		    !tb->FR[h]) {

			FUNC4(!tb->FL[h],
			       "vs-8245: dc_check_balance_leaf: FL[h] must exist");

			/* set parameter to merge S[0] with its left neighbor */
			FUNC14(tb, h, -1, 0, 0, NULL, -1, -1);
			return CARRY_ON;
		}

	/* check whether we can merge S[0] with right neighbor. */
	if (tb->rnum[0] >= vn->vn_nr_item && tb->rbytes == -1) {
		FUNC14(tb, h, 0, -1, 0, NULL, -1, -1);
		return CARRY_ON;
	}

	/*
	 * All contents of S[0] can be moved to the neighbors (L[0] & R[0]).
	 * Set parameters and return
	 */
	if (FUNC12(tb))
		return CARRY_ON;

	/* Balancing is not required. */
	tb->s0num = vn->vn_nr_item;
	FUNC14(tb, h, 0, 0, 1, NULL, -1, -1);
	return NO_BALANCING_NEEDED;
}