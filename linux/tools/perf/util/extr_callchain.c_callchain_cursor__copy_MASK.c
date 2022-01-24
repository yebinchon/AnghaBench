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
struct callchain_cursor_node {int /*<<< orphan*/  srcline; int /*<<< orphan*/  branch_from; int /*<<< orphan*/  iter_cycles; int /*<<< orphan*/  nr_loop_iter; int /*<<< orphan*/  branch_flags; int /*<<< orphan*/  branch; int /*<<< orphan*/  sym; int /*<<< orphan*/  map; int /*<<< orphan*/  ip; } ;
struct callchain_cursor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct callchain_cursor*) ; 
 int FUNC1 (struct callchain_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct callchain_cursor*) ; 
 struct callchain_cursor_node* FUNC3 (struct callchain_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct callchain_cursor*) ; 

int FUNC5(struct callchain_cursor *dst,
			   struct callchain_cursor *src)
{
	int rc = 0;

	FUNC4(dst);
	FUNC2(src);

	while (true) {
		struct callchain_cursor_node *node;

		node = FUNC3(src);
		if (node == NULL)
			break;

		rc = FUNC1(dst, node->ip, node->map, node->sym,
					     node->branch, &node->branch_flags,
					     node->nr_loop_iter,
					     node->iter_cycles,
					     node->branch_from, node->srcline);
		if (rc)
			break;

		FUNC0(src);
	}

	return rc;
}