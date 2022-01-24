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
struct radix_tree_root {struct radix_tree_node* xa_head; } ;
struct radix_tree_node {unsigned int shift; } ;

/* Variables and functions */
 scalar_t__ RADIX_TREE_MAP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 int FUNC2 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_node*) ; 
 int FUNC4 (scalar_t__) ; 

void FUNC5(struct radix_tree_root *root, int maxindex)
{
	unsigned shift;
	struct radix_tree_node *node = root->xa_head;
	if (!FUNC3(node)) {
		FUNC0(maxindex == 0);
		return;
	}

	node = FUNC1(node);
	FUNC0(maxindex <= FUNC2(node));

	shift = node->shift;
	if (shift > 0)
		FUNC0(maxindex > FUNC4(shift - RADIX_TREE_MAP_SHIFT));
	else
		FUNC0(maxindex > 0);
}