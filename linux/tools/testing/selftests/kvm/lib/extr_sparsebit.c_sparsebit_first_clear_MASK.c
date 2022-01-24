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
struct sparsebit {int dummy; } ;
struct node {scalar_t__ idx; scalar_t__ num_after; int /*<<< orphan*/  mask; } ;
typedef  scalar_t__ sparsebit_idx_t ;
typedef  int /*<<< orphan*/  mask_t ;

/* Variables and functions */
 scalar_t__ MASK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct node* FUNC1 (struct sparsebit*) ; 
 scalar_t__ FUNC2 (struct node*,int /*<<< orphan*/ ) ; 
 struct node* FUNC3 (struct sparsebit*,struct node*) ; 
 int FUNC4 (struct sparsebit*) ; 

sparsebit_idx_t FUNC5(struct sparsebit *s)
{
	struct node *nodep1, *nodep2;

	/* Validate at least 1 bit is cleared. */
	FUNC0(FUNC4(s));

	/* If no nodes or first node index > 0 then lowest cleared is 0 */
	nodep1 = FUNC1(s);
	if (!nodep1 || nodep1->idx > 0)
		return 0;

	/* Does the mask in the first node contain any cleared bits. */
	if (nodep1->mask != ~(mask_t) 0)
		return FUNC2(nodep1, 0);

	/*
	 * All mask bits set in first node.  If there isn't a second node
	 * then the first cleared bit is the first bit after the bits
	 * described by the first node.
	 */
	nodep2 = FUNC3(s, nodep1);
	if (!nodep2) {
		/*
		 * No second node.  First cleared bit is first bit beyond
		 * bits described by first node.
		 */
		FUNC0(nodep1->mask == ~(mask_t) 0);
		FUNC0(nodep1->idx + MASK_BITS + nodep1->num_after != (sparsebit_idx_t) 0);
		return nodep1->idx + MASK_BITS + nodep1->num_after;
	}

	/*
	 * There is a second node.
	 * If it is not adjacent to the first node, then there is a gap
	 * of cleared bits between the nodes, and the first cleared bit
	 * is the first bit within the gap.
	 */
	if (nodep1->idx + MASK_BITS + nodep1->num_after != nodep2->idx)
		return nodep1->idx + MASK_BITS + nodep1->num_after;

	/*
	 * Second node is adjacent to the first node.
	 * Because it is adjacent, its mask should be non-zero.  If all
	 * its mask bits are set, then with it being adjacent, it should
	 * have had the mask bits moved into the num_after setting of the
	 * previous node.
	 */
	return FUNC2(nodep2, 0);
}