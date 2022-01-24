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
struct xa_node {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  array; int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xa_node*,int) ; 
 int /*<<< orphan*/  XA_RCU_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radix_tree_node_rcu_free ; 

__attribute__((used)) static void FUNC3(struct xa_node *node)
{
	FUNC0(node, !FUNC2(&node->private_list));
	node->array = XA_RCU_FREE;
	FUNC1(&node->rcu_head, radix_tree_node_rcu_free);
}