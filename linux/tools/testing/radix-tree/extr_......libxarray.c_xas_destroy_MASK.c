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
struct xa_state {struct xa_node* xa_alloc; } ;
struct xa_node {int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xa_node*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct xa_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radix_tree_node_cachep ; 

__attribute__((used)) static void FUNC3(struct xa_state *xas)
{
	struct xa_node *node = xas->xa_alloc;

	if (!node)
		return;
	FUNC0(node, !FUNC2(&node->private_list));
	FUNC1(radix_tree_node_cachep, node);
	xas->xa_alloc = NULL;
}