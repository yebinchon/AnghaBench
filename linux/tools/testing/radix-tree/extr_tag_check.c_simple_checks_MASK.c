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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(void)
{
	unsigned long index;
	FUNC0(tree, GFP_KERNEL);

	for (index = 0; index < 10000; index++) {
		FUNC1(&tree, index, 0);
		FUNC1(&tree, index, 1);
	}
	FUNC5(&tree, 0);
	FUNC5(&tree, 1);
	FUNC3(2, "before item_kill_tree: %d allocated\n", nr_allocated);
	FUNC2(&tree);
	FUNC4();
	FUNC3(2, "after item_kill_tree: %d allocated\n", nr_allocated);
}