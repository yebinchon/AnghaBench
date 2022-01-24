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
struct radix_tree_root {int /*<<< orphan*/ * xa_head; } ;
struct radix_tree_node {size_t offset; int /*<<< orphan*/  private_list; scalar_t__ count; int /*<<< orphan*/ ** slots; struct radix_tree_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_tree_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_node*) ; 
 int FUNC5 (struct radix_tree_root*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct radix_tree_root*) ; 

__attribute__((used)) static bool FUNC8(struct radix_tree_root *root,
			struct radix_tree_node *node)
{
	bool deleted = false;

	do {
		struct radix_tree_node *parent;

		if (node->count) {
			if (FUNC3(node) ==
					FUNC6(root->xa_head))
				deleted |= FUNC5(root);
			return deleted;
		}

		parent = node->parent;
		if (parent) {
			parent->slots[node->offset] = NULL;
			parent->count--;
		} else {
			/*
			 * Shouldn't the tags already have all been cleared
			 * by the caller?
			 */
			if (!FUNC1(root))
				FUNC7(root);
			root->xa_head = NULL;
		}

		FUNC0(!FUNC2(&node->private_list));
		FUNC4(node);
		deleted = true;

		node = parent;
	} while (node);

	return deleted;
}