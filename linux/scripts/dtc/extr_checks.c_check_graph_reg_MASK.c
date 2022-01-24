#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unit_addr ;
struct TYPE_3__ {int len; scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {TYPE_2__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;
struct TYPE_4__ {int addr_cells; int size_cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*,int) ; 
 struct property* FUNC2 (struct node*,char*) ; 
 char* FUNC3 (struct node*) ; 
 int FUNC4 (struct property*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(struct check *c, struct dt_info *dti,
			    struct node *node)
{
	char unit_addr[9];
	const char *unitname = FUNC3(node);
	struct property *prop;

	prop = FUNC2(node, "reg");
	if (!prop || !unitname)
		return;

	if (!(prop->val.val && prop->val.len == sizeof(cell_t))) {
		FUNC0(c, dti, node, "graph node malformed 'reg' property");
		return;
	}

	FUNC5(unit_addr, sizeof(unit_addr), "%x", FUNC4(prop));
	if (!FUNC6(unitname, unit_addr))
		FUNC0(c, dti, node, "graph node unit address error, expected \"%s\"",
		     unit_addr);

	if (node->parent->addr_cells != 1)
		FUNC1(c, dti, node, FUNC2(node, "#address-cells"),
			  "graph node '#address-cells' is %d, must be 1",
			  node->parent->addr_cells);
	if (node->parent->size_cells != 0)
		FUNC1(c, dti, node, FUNC2(node, "#size-cells"),
			  "graph node '#size-cells' is %d, must be 0",
			  node->parent->size_cells);
}