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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shadow_nodes ; 

__attribute__((used)) static void FUNC3(struct xa_node *node)
{
	if (node->count && node->count == node->nr_values) {
		if (FUNC2(&node->private_list))
			FUNC0(&shadow_nodes, &node->private_list);
	} else {
		if (!FUNC2(&node->private_list))
			FUNC1(&node->private_list);
	}
}