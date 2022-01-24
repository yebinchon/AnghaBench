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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  val; } ;
struct property {TYPE_1__ val; struct property* name; struct property* next; } ;
struct node {int /*<<< orphan*/  basenamelen; int /*<<< orphan*/  name; struct property* proplist; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (struct property*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct property*,char*) ; 

__attribute__((used)) static void FUNC5(struct check *c, struct dt_info *dti,
				  struct node *node)
{
	struct property **pp, *prop = NULL;

	for (pp = &node->proplist; *pp; pp = &((*pp)->next))
		if (FUNC4((*pp)->name, "name")) {
			prop = *pp;
			break;
		}

	if (!prop)
		return; /* No name property, that's fine */

	if ((prop->val.len != node->basenamelen+1)
	    || (FUNC3(prop->val.val, node->name, node->basenamelen) != 0)) {
		FUNC0(c, dti, node, "\"name\" property is incorrect (\"%s\" instead"
		     " of base node name)", prop->val.val);
	} else {
		/* The name property is correct, and therefore redundant.
		 * Delete it */
		*pp = prop->next;
		FUNC2(prop->name);
		FUNC1(prop->val);
		FUNC2(prop);
	}
}