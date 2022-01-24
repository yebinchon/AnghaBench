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
typedef  void radix_tree_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 unsigned int FUNC2 (void*,void**,unsigned long) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_root*,void**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct radix_tree_root*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct radix_tree_root*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (void*,unsigned int,unsigned int) ; 

void *FUNC9(struct radix_tree_root *root,
			unsigned long index, unsigned int tag)
{
	struct radix_tree_node *node, *parent;
	unsigned long maxindex;

	FUNC4(root, &node, &maxindex);
	FUNC0(index > maxindex);

	while (FUNC3(node)) {
		unsigned offset;

		parent = FUNC1(node);
		offset = FUNC2(parent, &node, index);
		FUNC0(!node);

		if (!FUNC7(parent, tag, offset))
			FUNC8(parent, tag, offset);
	}

	/* set the root's tag bit */
	if (!FUNC5(root, tag))
		FUNC6(root, tag);

	return node;
}