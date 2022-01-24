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
struct sparsebit {scalar_t__ num_set; } ;
struct node {int idx; int mask; } ;
typedef  int sparsebit_idx_t ;

/* Variables and functions */
 int MASK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct node* FUNC1 (struct sparsebit*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sparsebit*,struct node*) ; 
 struct node* FUNC3 (struct sparsebit*,int) ; 
 scalar_t__ FUNC4 (struct sparsebit*) ; 
 int /*<<< orphan*/  FUNC5 (struct sparsebit*,int) ; 

__attribute__((used)) static void FUNC6(struct sparsebit *s, sparsebit_idx_t idx)
{
	struct node *nodep;

	/* Skip bits that are already cleared */
	if (!FUNC5(s, idx))
		return;

	/* Is there a node that describes the setting of this bit? */
	nodep = FUNC1(s, idx);
	if (!nodep)
		return;

	/*
	 * If a num_after bit, split the node, so that the bit is
	 * part of a node mask.
	 */
	if (idx >= nodep->idx + MASK_BITS)
		nodep = FUNC3(s, idx & -MASK_BITS);

	/*
	 * After node_split above, bit at idx should be within the mask.
	 * Clear that bit.
	 */
	FUNC0(idx >= nodep->idx && idx <= nodep->idx + MASK_BITS - 1);
	FUNC0(nodep->mask & (1 << (idx - nodep->idx)));
	nodep->mask &= ~(1 << (idx - nodep->idx));
	FUNC0(s->num_set > 0 || FUNC4(s));
	s->num_set--;

	FUNC2(s, nodep);
}