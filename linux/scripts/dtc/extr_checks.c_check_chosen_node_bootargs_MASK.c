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
struct property {int /*<<< orphan*/  name; } ;
struct node {int /*<<< orphan*/  name; } ;
struct dt_info {int dummy; } ;
struct check {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*) ; 
 struct property* FUNC1 (struct node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c, struct dt_info *dti,
				       struct node *node)
{
	struct property *prop;

	if (!FUNC2(node->name, "chosen"))
		return;

	prop = FUNC1(node, "bootargs");
	if (!prop)
		return;

	c->data = prop->name;
	FUNC0(c, dti, node);
}