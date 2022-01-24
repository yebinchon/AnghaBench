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
struct radix_tree_root {int /*<<< orphan*/  xa_head; } ;
struct radix_tree_node {int shift; } ;

/* Variables and functions */
 int RADIX_TREE_MAP_SHIFT ; 
 struct radix_tree_node* FUNC0 (struct radix_tree_node*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_node*) ; 
 struct radix_tree_node* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(const struct radix_tree_root *root,
		struct radix_tree_node **nodep, unsigned long *maxindex)
{
	struct radix_tree_node *node = FUNC4(root->xa_head);

	*nodep = node;

	if (FUNC1(FUNC3(node))) {
		node = FUNC0(node);
		*maxindex = FUNC2(node);
		return node->shift + RADIX_TREE_MAP_SHIFT;
	}

	*maxindex = 0;
	return 0;
}