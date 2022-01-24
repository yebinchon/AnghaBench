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
struct radix_tree_root {int dummy; } ;
struct radix_tree_node {int dummy; } ;

/* Variables and functions */
 struct radix_tree_node* RADIX_TREE_RETRY ; 
 struct radix_tree_node* FUNC0 (struct radix_tree_node*) ; 
 unsigned int FUNC1 (struct radix_tree_node*,struct radix_tree_node**,unsigned long) ; 
 scalar_t__ FUNC2 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_root const*,struct radix_tree_node**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_root const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct radix_tree_node*,unsigned int,unsigned int) ; 

int FUNC6(const struct radix_tree_root *root,
			unsigned long index, unsigned int tag)
{
	struct radix_tree_node *node, *parent;
	unsigned long maxindex;

	if (!FUNC4(root, tag))
		return 0;

	FUNC3(root, &node, &maxindex);
	if (index > maxindex)
		return 0;

	while (FUNC2(node)) {
		unsigned offset;

		parent = FUNC0(node);
		offset = FUNC1(parent, &node, index);

		if (!FUNC5(parent, tag, offset))
			return 0;
		if (node == RADIX_TREE_RETRY)
			break;
	}

	return 1;
}