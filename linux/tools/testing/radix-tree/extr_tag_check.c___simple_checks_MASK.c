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
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_tree_root*,unsigned long) ; 
 int FUNC2 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_root*,unsigned long) ; 
 int FUNC4 (struct radix_tree_root*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radix_tree_root*,unsigned long,int) ; 
 int FUNC6 (struct radix_tree_root*,unsigned long,unsigned long,int,int,int) ; 

__attribute__((used)) static void
FUNC7(struct radix_tree_root *tree, unsigned long index, int tag)
{
	unsigned long first = 0;
	int ret;

	FUNC1(tree, index);
	FUNC0(FUNC4(tree, index, tag) == 0);

	FUNC3(tree, index);
	FUNC0(FUNC4(tree, index, tag) == 0);
	FUNC5(tree, index, tag);
	ret = FUNC4(tree, index, tag);
	FUNC0(ret != 0);
	ret = FUNC6(tree, first, ~0UL, 10, tag, !tag);
	FUNC0(ret == 1);
	ret = FUNC4(tree, index, !tag);
	FUNC0(ret != 0);
	ret = FUNC2(tree, index);
	FUNC0(ret != 0);
	FUNC3(tree, index);
	ret = FUNC4(tree, index, tag);
	FUNC0(ret == 0);
	ret = FUNC2(tree, index);
	FUNC0(ret != 0);
	ret = FUNC2(tree, index);
	FUNC0(ret == 0);
}