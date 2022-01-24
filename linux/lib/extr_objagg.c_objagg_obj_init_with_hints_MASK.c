#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct objagg_obj {int /*<<< orphan*/  obj; } ;
struct objagg_hints_node {TYPE_1__* parent; } ;
struct objagg {int /*<<< orphan*/  hints; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_obj*) ; 
 int FUNC1 (struct objagg_obj*) ; 
 struct objagg_obj* FUNC2 (struct objagg*,int /*<<< orphan*/ ) ; 
 struct objagg_hints_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct objagg*,struct objagg_obj*,struct objagg_obj*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct objagg*,struct objagg_obj*) ; 
 int FUNC6 (struct objagg*,struct objagg_obj*,struct objagg_hints_node*) ; 

__attribute__((used)) static int FUNC7(struct objagg *objagg,
				      struct objagg_obj *objagg_obj,
				      bool *hint_found)
{
	struct objagg_hints_node *hnode;
	struct objagg_obj *parent;
	int err;

	hnode = FUNC3(objagg->hints, objagg_obj->obj);
	if (!hnode) {
		*hint_found = false;
		return 0;
	}
	*hint_found = true;

	if (!hnode->parent)
		return FUNC6(objagg, objagg_obj, hnode);

	parent = FUNC2(objagg, hnode->parent->obj);
	if (FUNC0(parent))
		return FUNC1(parent);

	err = FUNC4(objagg, objagg_obj, parent, false);
	if (err) {
		*hint_found = false;
		err = 0;
		goto err_parent_assign;
	}

	return 0;

err_parent_assign:
	FUNC5(objagg, parent);
	return err;
}