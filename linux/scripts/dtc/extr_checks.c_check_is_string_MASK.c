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
struct property {int /*<<< orphan*/  val; } ;
struct node {int dummy; } ;
struct dt_info {int dummy; } ;
struct check {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,struct property*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct node*,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c, struct dt_info *dti,
			    struct node *node)
{
	struct property *prop;
	char *propname = c->data;

	prop = FUNC2(node, propname);
	if (!prop)
		return; /* Not present, assumed ok */

	if (!FUNC1(prop->val))
		FUNC0(c, dti, node, prop, "property is not a string");
}