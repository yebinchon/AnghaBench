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
struct radix_tree_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_tree_root*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_tree_node*,unsigned int,int) ; 

void FUNC3(struct radix_tree_root *root, unsigned int tag)
{
	struct radix_tree_node *node = root->xa_head;
	if (!FUNC0(node))
		return;
	FUNC2(node, tag, !!FUNC1(root, tag));
}