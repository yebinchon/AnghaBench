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
struct TYPE_2__ {int len; scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {int /*<<< orphan*/  basenamelen; int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct property* FUNC3 (struct node*,char*) ; 
 int FUNC4 (struct node*) ; 
 int FUNC5 (struct node*) ; 
 int /*<<< orphan*/  pci_bus ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(struct check *c, struct dt_info *dti, struct node *node)
{
	struct property *prop;
	cell_t *cells;

	prop = FUNC3(node, "device_type");
	if (!prop || !FUNC6(prop->val.val, "pci"))
		return;

	node->bus = &pci_bus;

	if (!FUNC7(node->name, node->basenamelen, "pci") &&
	    !FUNC7(node->name, node->basenamelen, "pcie"))
		FUNC0(c, dti, node, "node name is not \"pci\" or \"pcie\"");

	prop = FUNC3(node, "ranges");
	if (!prop)
		FUNC0(c, dti, node, "missing ranges for PCI bridge (or not a bridge)");

	if (FUNC4(node) != 3)
		FUNC0(c, dti, node, "incorrect #address-cells for PCI bridge");
	if (FUNC5(node) != 2)
		FUNC0(c, dti, node, "incorrect #size-cells for PCI bridge");

	prop = FUNC3(node, "bus-range");
	if (!prop)
		return;

	if (prop->val.len != (sizeof(cell_t) * 2)) {
		FUNC1(c, dti, node, prop, "value must be 2 cells");
		return;
	}
	cells = (cell_t *)prop->val.val;
	if (FUNC2(cells[0]) > FUNC2(cells[1]))
		FUNC1(c, dti, node, prop, "1st cell must be less than or equal to 2nd cell");
	if (FUNC2(cells[1]) > 0xff)
		FUNC1(c, dti, node, prop, "maximum bus number must be less than 256");
}