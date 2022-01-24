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
struct aa_labelset {int /*<<< orphan*/  root; int /*<<< orphan*/  lock; } ;
struct aa_label {int flags; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_IN_TREE ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 struct aa_labelset* FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct aa_label *old, struct aa_label *new)
{
	struct aa_labelset *ls = FUNC3(old);

	FUNC0(!ls);
	FUNC0(!old);
	FUNC0(!new);
	FUNC4(&ls->lock);
	FUNC0(new->flags & FLAG_IN_TREE);

	if (!FUNC2(old))
		FUNC1(old);

	if (old->flags & FLAG_IN_TREE) {
		FUNC5(&old->node, &new->node, &ls->root);
		old->flags &= ~FLAG_IN_TREE;
		new->flags |= FLAG_IN_TREE;
		return true;
	}

	return false;
}