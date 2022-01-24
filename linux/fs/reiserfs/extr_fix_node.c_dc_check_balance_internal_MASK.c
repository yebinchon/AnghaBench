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
struct tree_balance {int* lnum; int* rnum; struct buffer_head** FR; struct buffer_head** FL; int /*<<< orphan*/  tb_path; struct virtual_node* tb_vn; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int) ; 
 int CARRY_ON ; 
 int DC_SIZE ; 
 int KEY_SIZE ; 
 int FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 int NO_BALANCING_NEEDED ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tree_balance*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tree_balance*,int) ; 
 int FUNC13 (struct tree_balance*,int) ; 
 int FUNC14 (struct tree_balance*,int) ; 
 scalar_t__ FUNC15 (struct tree_balance*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tree_balance*,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC17(struct tree_balance *tb, int h)
{
	struct virtual_node *vn = tb->tb_vn;

	/*
	 * Sh is the node whose balance is currently being checked,
	 * and Fh is its father.
	 */
	struct buffer_head *Sh, *Fh;
	int ret;
	int lfree, rfree /* free space in L and R */ ;

	Sh = FUNC5(tb->tb_path, h);
	Fh = FUNC6(tb->tb_path, h);

	/*
	 * using tb->insert_size[h], which is negative in this case,
	 * create_virtual_node calculates:
	 * new_nr_item = number of items node would have if operation is
	 * performed without balancing (new_nr_item);
	 */
	FUNC10(tb, h);

	if (!Fh) {		/* S[h] is the root. */
		/* no balancing for higher levels needed */
		if (vn->vn_nr_item > 0) {
			FUNC16(tb, h, 0, 0, 1, NULL, -1, -1);
			return NO_BALANCING_NEEDED;
		}
		/*
		 * new_nr_item == 0.
		 * Current root will be deleted resulting in
		 * decrementing the tree height.
		 */
		FUNC16(tb, h, 0, 0, 0, NULL, -1, -1);
		return CARRY_ON;
	}

	if ((ret = FUNC13(tb, h)) != CARRY_ON)
		return ret;

	/* get free space of neighbors */
	rfree = FUNC14(tb, h);
	lfree = FUNC12(tb, h);

	/* determine maximal number of items we can fit into neighbors */
	FUNC8(tb, h, lfree);
	FUNC9(tb, h, rfree);

	/*
	 * Balance condition for the internal node is valid.
	 * In this case we balance only if it leads to better packing.
	 */
	if (vn->vn_nr_item >= FUNC3(Sh)) {
		/*
		 * Here we join S[h] with one of its neighbors,
		 * which is impossible with greater values of new_nr_item.
		 */
		if (vn->vn_nr_item == FUNC3(Sh)) {
			/* All contents of S[h] can be moved to L[h]. */
			if (tb->lnum[h] >= vn->vn_nr_item + 1) {
				int n;
				int order_L;

				order_L =
				    ((n =
				      FUNC4(tb->tb_path,
							  h)) ==
				     0) ? FUNC0(tb->FL[h]) : n - 1;
				n = FUNC11(FUNC1(tb->FL[h], order_L)) /
				    (DC_SIZE + KEY_SIZE);
				FUNC16(tb, h, -n - 1, 0, 0, NULL, -1,
					       -1);
				return CARRY_ON;
			}

			/* All contents of S[h] can be moved to R[h]. */
			if (tb->rnum[h] >= vn->vn_nr_item + 1) {
				int n;
				int order_R;

				order_R =
				    ((n =
				      FUNC4(tb->tb_path,
							  h)) ==
				     FUNC0(Fh)) ? 0 : n + 1;
				n = FUNC11(FUNC1(tb->FR[h], order_R)) /
				    (DC_SIZE + KEY_SIZE);
				FUNC16(tb, h, 0, -n - 1, 0, NULL, -1,
					       -1);
				return CARRY_ON;
			}
		}

		/*
		 * All contents of S[h] can be moved to the neighbors
		 * (L[h] & R[h]).
		 */
		if (tb->rnum[h] + tb->lnum[h] >= vn->vn_nr_item + 1) {
			int to_r;

			to_r =
			    ((FUNC2(Sh) << 1) + 2 - tb->lnum[h] -
			     tb->rnum[h] + vn->vn_nr_item + 1) / 2 -
			    (FUNC2(Sh) + 1 - tb->rnum[h]);
			FUNC16(tb, h, vn->vn_nr_item + 1 - to_r, to_r,
				       0, NULL, -1, -1);
			return CARRY_ON;
		}

		/* Balancing does not lead to better packing. */
		FUNC16(tb, h, 0, 0, 1, NULL, -1, -1);
		return NO_BALANCING_NEEDED;
	}

	/*
	 * Current node contain insufficient number of items.
	 * Balancing is required.
	 */
	/* Check whether we can merge S[h] with left neighbor. */
	if (tb->lnum[h] >= vn->vn_nr_item + 1)
		if (FUNC15(tb, h)
		    || tb->rnum[h] < vn->vn_nr_item + 1 || !tb->FR[h]) {
			int n;
			int order_L;

			order_L =
			    ((n =
			      FUNC4(tb->tb_path,
						  h)) ==
			     0) ? FUNC0(tb->FL[h]) : n - 1;
			n = FUNC11(FUNC1(tb->FL[h], order_L)) / (DC_SIZE +
								      KEY_SIZE);
			FUNC16(tb, h, -n - 1, 0, 0, NULL, -1, -1);
			return CARRY_ON;
		}

	/* Check whether we can merge S[h] with right neighbor. */
	if (tb->rnum[h] >= vn->vn_nr_item + 1) {
		int n;
		int order_R;

		order_R =
		    ((n =
		      FUNC4(tb->tb_path,
					  h)) == FUNC0(Fh)) ? 0 : (n + 1);
		n = FUNC11(FUNC1(tb->FR[h], order_R)) / (DC_SIZE +
							      KEY_SIZE);
		FUNC16(tb, h, 0, -n - 1, 0, NULL, -1, -1);
		return CARRY_ON;
	}

	/* All contents of S[h] can be moved to the neighbors (L[h] & R[h]). */
	if (tb->rnum[h] + tb->lnum[h] >= vn->vn_nr_item + 1) {
		int to_r;

		to_r =
		    ((FUNC2(Sh) << 1) + 2 - tb->lnum[h] - tb->rnum[h] +
		     vn->vn_nr_item + 1) / 2 - (FUNC2(Sh) + 1 -
						tb->rnum[h]);
		FUNC16(tb, h, vn->vn_nr_item + 1 - to_r, to_r, 0, NULL,
			       -1, -1);
		return CARRY_ON;
	}

	/* For internal nodes try to borrow item from a neighbor */
	FUNC7(!tb->FL[h] && !tb->FR[h], "vs-8235: trying to borrow for root");

	/* Borrow one or two items from caching neighbor */
	if (FUNC15(tb, h) || !tb->FR[h]) {
		int from_l;

		from_l =
		    (FUNC2(Sh) + 1 - tb->lnum[h] + vn->vn_nr_item +
		     1) / 2 - (vn->vn_nr_item + 1);
		FUNC16(tb, h, -from_l, 0, 1, NULL, -1, -1);
		return CARRY_ON;
	}

	FUNC16(tb, h, 0,
		       -((FUNC2(Sh) + 1 - tb->rnum[h] + vn->vn_nr_item +
			  1) / 2 - (vn->vn_nr_item + 1)), 1, NULL, -1, -1);
	return CARRY_ON;
}