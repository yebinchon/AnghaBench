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
 int /*<<< orphan*/  FUNC1 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 struct aa_labelset* FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct aa_label *label, struct aa_label *new)
{
	struct aa_labelset *ls = FUNC4(label);

	FUNC0(!ls);
	FUNC0(!label);
	FUNC5(&ls->lock);

	if (new)
		FUNC1(label, new);

	if (!FUNC3(label))
		FUNC2(label);

	if (label->flags & FLAG_IN_TREE) {
		FUNC6(&label->node, &ls->root);
		label->flags &= ~FLAG_IN_TREE;
		return true;
	}

	return false;
}