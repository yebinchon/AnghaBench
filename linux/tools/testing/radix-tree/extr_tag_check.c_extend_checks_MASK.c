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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	FUNC0(tree, GFP_KERNEL);

	FUNC3(&tree, 43);
	FUNC1(FUNC5(&tree, 43, 0) == 0);
	FUNC6(&tree, 43, 0);
	FUNC1(FUNC5(&tree, 43, 0) == 1);
	FUNC3(&tree, 1000000);
	FUNC1(FUNC5(&tree, 43, 0) == 1);

	FUNC3(&tree, 0);
	FUNC6(&tree, 0, 0);
	FUNC2(&tree, 1000000);
	FUNC1(FUNC5(&tree, 43, 0) != 0);
	FUNC2(&tree, 43);
	FUNC1(FUNC5(&tree, 43, 0) == 0);	/* crash */
	FUNC1(FUNC5(&tree, 0, 0) == 1);

	FUNC7(&tree, 0);

	FUNC4(&tree);
}