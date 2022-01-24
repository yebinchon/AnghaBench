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
struct o2nm_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2net_connected_peers ; 
 int /*<<< orphan*/  FUNC2 (struct o2nm_node*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct o2nm_node *node, int node_num,
				  void *data)
{
	FUNC4(node_num);

	if (!node)
		return;

	if (node_num != FUNC3())
		FUNC2(node);

	FUNC0(FUNC1(&o2net_connected_peers) < 0);
}