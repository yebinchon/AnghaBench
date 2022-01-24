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
struct zswap_entry {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zswap_tree*,struct zswap_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct zswap_entry*) ; 
 struct zswap_entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zswap_tree** zswap_trees ; 

__attribute__((used)) static void FUNC5(unsigned type, pgoff_t offset)
{
	struct zswap_tree *tree = zswap_trees[type];
	struct zswap_entry *entry;

	/* find */
	FUNC0(&tree->lock);
	entry = FUNC4(&tree->rbroot, offset);
	if (!entry) {
		/* entry was written back */
		FUNC1(&tree->lock);
		return;
	}

	/* remove from rbtree */
	FUNC3(&tree->rbroot, entry);

	/* drop the initial reference from entry creation */
	FUNC2(tree, entry);

	FUNC1(&tree->lock);
}