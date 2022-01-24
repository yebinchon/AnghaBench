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
struct sparsebit {struct node* root; } ;
struct node {int idx; int num_after; int mask; struct node* right; struct node* parent; struct node* left; } ;
typedef  int sparsebit_idx_t ;

/* Variables and functions */
 int MASK_BITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct node* FUNC2 (int,int) ; 
 struct node* FUNC3 (struct sparsebit*,struct node*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct node *FUNC5(struct sparsebit *s, sparsebit_idx_t idx)
{
	struct node *nodep, *parentp, *prev;

	/* Allocate and initialize the new node. */
	nodep = FUNC2(1, sizeof(*nodep));
	if (!nodep) {
		FUNC4("calloc");
		FUNC0();
	}

	nodep->idx = idx & -MASK_BITS;

	/* If no nodes, set it up as the root node. */
	if (!s->root) {
		s->root = nodep;
		return nodep;
	}

	/*
	 * Find the parent where the new node should be attached
	 * and add the node there.
	 */
	parentp = s->root;
	while (true) {
		if (idx < parentp->idx) {
			if (!parentp->left) {
				parentp->left = nodep;
				nodep->parent = parentp;
				break;
			}
			parentp = parentp->left;
		} else {
			FUNC1(idx > parentp->idx + MASK_BITS + parentp->num_after - 1);
			if (!parentp->right) {
				parentp->right = nodep;
				nodep->parent = parentp;
				break;
			}
			parentp = parentp->right;
		}
	}

	/*
	 * Does num_after bits of previous node overlap with the mask
	 * of the new node?  If so set the bits in the new nodes mask
	 * and reduce the previous nodes num_after.
	 */
	prev = FUNC3(s, nodep);
	while (prev && prev->idx + MASK_BITS + prev->num_after - 1 >= nodep->idx) {
		unsigned int n1 = (prev->idx + MASK_BITS + prev->num_after - 1)
			- nodep->idx;
		FUNC1(prev->num_after > 0);
		FUNC1(n1 < MASK_BITS);
		FUNC1(!(nodep->mask & (1 << n1)));
		nodep->mask |= (1 << n1);
		prev->num_after--;
	}

	return nodep;
}