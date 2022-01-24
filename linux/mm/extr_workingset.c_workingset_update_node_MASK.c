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
struct xa_node {scalar_t__ count; scalar_t__ nr_values; int /*<<< orphan*/  private_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WORKINGSET_NODES ; 
 int /*<<< orphan*/  FUNC1 (struct xa_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xa_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shadow_nodes ; 

void FUNC7(struct xa_node *node)
{
	/*
	 * Track non-empty nodes that contain only shadow entries;
	 * unlink those that contain pages or are being freed.
	 *
	 * Avoid acquiring the list_lru lock when the nodes are
	 * already where they should be. The list_empty() test is safe
	 * as node->private_list is protected by the i_pages lock.
	 */
	FUNC0(!FUNC3());  /* For __inc_lruvec_page_state */

	if (node->count && node->count == node->nr_values) {
		if (FUNC4(&node->private_list)) {
			FUNC5(&shadow_nodes, &node->private_list);
			FUNC2(node, WORKINGSET_NODES);
		}
	} else {
		if (!FUNC4(&node->private_list)) {
			FUNC6(&shadow_nodes, &node->private_list);
			FUNC1(node, WORKINGSET_NODES);
		}
	}
}