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
struct zswap_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  rbroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 struct zswap_tree* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct zswap_tree** zswap_trees ; 

__attribute__((used)) static void FUNC3(unsigned type)
{
	struct zswap_tree *tree;

	tree = FUNC0(sizeof(*tree), GFP_KERNEL);
	if (!tree) {
		FUNC1("alloc failed, zswap disabled for swap type %d\n", type);
		return;
	}

	tree->rbroot = RB_ROOT;
	FUNC2(&tree->lock);
	zswap_trees[type] = tree;
}