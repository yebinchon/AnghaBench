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
struct sparsebit {int /*<<< orphan*/  num_set; } ;
struct node {int idx; int mask; } ;
typedef  int sparsebit_idx_t ;

/* Variables and functions */
 int MASK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sparsebit*,struct node*) ; 
 struct node* FUNC2 (struct sparsebit*,int) ; 
 scalar_t__ FUNC3 (struct sparsebit*,int) ; 

__attribute__((used)) static void FUNC4(struct sparsebit *s, sparsebit_idx_t idx)
{
	struct node *nodep;

	/* Skip bits that are already set */
	if (FUNC3(s, idx))
		return;

	/*
	 * Get a node where the bit at idx is described by the mask.
	 * The node_split will also create a node, if there isn't
	 * already a node that describes the setting of bit.
	 */
	nodep = FUNC2(s, idx & -MASK_BITS);

	/* Set the bit within the nodes mask */
	FUNC0(idx >= nodep->idx && idx <= nodep->idx + MASK_BITS - 1);
	FUNC0(!(nodep->mask & (1 << (idx - nodep->idx))));
	nodep->mask |= 1 << (idx - nodep->idx);
	s->num_set++;

	FUNC1(s, nodep);
}