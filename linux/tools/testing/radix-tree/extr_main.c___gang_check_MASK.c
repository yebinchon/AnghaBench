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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,long,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tree ; 

void FUNC7(unsigned long middle, long down, long up, int chunk, int hop)
{
	long idx;
	FUNC0(tree, GFP_KERNEL);

	middle = 1 << 30;

	for (idx = -down; idx < up; idx++)
		FUNC5(&tree, middle + idx);

	FUNC1(&tree, middle - down - 1);
	for (idx = -down; idx < up; idx++)
		FUNC2(&tree, middle + idx);
	FUNC1(&tree, middle + up);

	if (chunk > 0) {
		FUNC4(&tree, middle - down, up + down,
				chunk, hop);
		FUNC3(&tree, middle - down, down + up, chunk);
	}
	FUNC6(&tree);
}