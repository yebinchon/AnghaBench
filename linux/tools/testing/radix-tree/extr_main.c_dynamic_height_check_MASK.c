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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(void)
{
	int i;
	FUNC0(tree, GFP_KERNEL);
	FUNC5(&tree, 0);

	FUNC3(&tree, 42);
	FUNC5(&tree, 42);

	FUNC3(&tree, 1000000);
	FUNC5(&tree, 1000000);

	FUNC1(FUNC2(&tree, 1000000));
	FUNC5(&tree, 42);

	FUNC1(FUNC2(&tree, 42));
	FUNC5(&tree, 0);

	for (i = 0; i < 1000; i++) {
		FUNC3(&tree, i);
		FUNC5(&tree, i);
	}

	i--;
	for (;;) {
		FUNC1(FUNC2(&tree, i));
		if (i == 0) {
			FUNC5(&tree, 0);
			break;
		}
		i--;
		FUNC5(&tree, i);
	}

	FUNC4(&tree);
}