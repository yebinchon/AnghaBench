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
struct btree_head {int /*<<< orphan*/  mempool; } ;
struct btree_geo {int no_pairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_head*,struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC2 (struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC3 (struct btree_head*,struct btree_geo*,unsigned long*,int) ; 
 int FUNC4 (struct btree_geo*,unsigned long*,int) ; 
 int FUNC5 (struct btree_geo*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btree_head*,struct btree_geo*,int,unsigned long*,int,unsigned long*,int,unsigned long*,int) ; 

__attribute__((used)) static void FUNC8(struct btree_head *head, struct btree_geo *geo,
		unsigned long *key, int level, unsigned long *child, int fill)
{
	unsigned long *parent, *left = NULL, *right = NULL;
	int i, no_left, no_right;

	if (fill == 0) {
		/* Because we don't steal entries from a neighbour, this case
		 * can happen.  Parent node contains a single child, this
		 * node, so merging with a sibling never happens.
		 */
		FUNC1(head, geo, key, level + 1);
		FUNC6(child, head->mempool);
		return;
	}

	parent = FUNC3(head, geo, key, level + 1);
	i = FUNC5(geo, parent, key);
	FUNC0(FUNC2(geo, parent, i) != child);

	if (i > 0) {
		left = FUNC2(geo, parent, i - 1);
		no_left = FUNC4(geo, left, 0);
		if (fill + no_left <= geo->no_pairs) {
			FUNC7(head, geo, level,
					left, no_left,
					child, fill,
					parent, i - 1);
			return;
		}
	}
	if (i + 1 < FUNC4(geo, parent, i)) {
		right = FUNC2(geo, parent, i + 1);
		no_right = FUNC4(geo, right, 0);
		if (fill + no_right <= geo->no_pairs) {
			FUNC7(head, geo, level,
					child, fill,
					right, no_right,
					parent, i);
			return;
		}
	}
	/*
	 * We could also try to steal one entry from the left or right
	 * neighbor.  By not doing so we changed the invariant from
	 * "all nodes are at least half full" to "no two neighboring
	 * nodes can be merged".  Which means that the average fill of
	 * all nodes is still half or better.
	 */
}