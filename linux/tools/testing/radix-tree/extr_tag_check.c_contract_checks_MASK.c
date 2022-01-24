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
struct item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RADIX_TREE_MAP_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	struct item *item;
	int tmp;
	FUNC0(tree, GFP_KERNEL);

	tmp = 1<<RADIX_TREE_MAP_SHIFT;
	FUNC3(&tree, tmp);
	FUNC3(&tree, tmp+1);
	FUNC7(&tree, tmp, 0);
	FUNC7(&tree, tmp, 1);
	FUNC7(&tree, tmp+1, 0);
	FUNC2(&tree, tmp+1);
	FUNC5(&tree, tmp, 1);

	FUNC1(FUNC8(&tree, (void **)&item, 0, 1, 0) == 1);
	FUNC1(FUNC8(&tree, (void **)&item, 0, 1, 1) == 0);

	FUNC1(FUNC6(&tree, tmp, 0) == 1);
	FUNC1(FUNC6(&tree, tmp, 1) == 0);

	FUNC9(&tree, 0);
	FUNC4(&tree);
}