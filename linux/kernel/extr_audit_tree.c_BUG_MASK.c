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
struct audit_tree {int goner; int /*<<< orphan*/  list; int /*<<< orphan*/  same_root; int /*<<< orphan*/ * root; int /*<<< orphan*/  rules; } ;
struct audit_krule {struct audit_tree* tree; int /*<<< orphan*/  rlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prune_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct audit_krule *rule)
{
	struct audit_tree *tree;
	tree = rule->tree;
	if (tree) {
		FUNC4(&hash_lock);
		FUNC1(&rule->rlist);
		if (FUNC2(&tree->rules) && !tree->goner) {
			tree->root = NULL;
			FUNC1(&tree->same_root);
			tree->goner = 1;
			FUNC3(&tree->list, &prune_list);
			rule->tree = NULL;
			FUNC5(&hash_lock);
			FUNC0();
			return 1;
		}
		rule->tree = NULL;
		FUNC5(&hash_lock);
		return 1;
	}
	return 0;
}