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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 long long FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,unsigned long,unsigned long,long long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  tree ; 

__attribute__((used)) static void FUNC8(unsigned long size, unsigned long step)
{
	FUNC0(tree, GFP_KERNEL);
	long long normal, tagged;

	FUNC2(&tree, size, step);
	FUNC4(&tree, size, step);

	tagged = FUNC3(&tree, true);
	normal = FUNC3(&tree, false);

	FUNC6(2, "Size: %8ld, step: %8ld, tagged iteration: %8lld ns\n",
		size, step, tagged);
	FUNC6(2, "Size: %8ld, step: %8ld, normal iteration: %8lld ns\n",
		size, step, normal);

	FUNC1(&tree, size, step);

	FUNC5(&tree);
	FUNC7();
}