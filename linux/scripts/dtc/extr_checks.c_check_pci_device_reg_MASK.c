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
struct TYPE_4__ {scalar_t__ val; } ;
struct property {TYPE_2__ val; } ;
struct node {TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  scalar_t__ cell_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 struct property* FUNC3 (struct node*,char*) ; 
 char* FUNC4 (struct node*) ; 
 int /*<<< orphan*/  pci_bus ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int,...) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(struct check *c, struct dt_info *dti, struct node *node)
{
	struct property *prop;
	const char *unitname = FUNC4(node);
	char unit_addr[5];
	unsigned int dev, func, reg;
	cell_t *cells;

	if (!node->parent || (node->parent->bus != &pci_bus))
		return;

	prop = FUNC3(node, "reg");
	if (!prop) {
		FUNC0(c, dti, node, "missing PCI reg property");
		return;
	}

	cells = (cell_t *)prop->val.val;
	if (cells[1] || cells[2])
		FUNC1(c, dti, node, prop, "PCI reg config space address cells 2 and 3 must be 0");

	reg = FUNC2(cells[0]);
	dev = (reg & 0xf800) >> 11;
	func = (reg & 0x700) >> 8;

	if (reg & 0xff000000)
		FUNC1(c, dti, node, prop, "PCI reg address is not configuration space");
	if (reg & 0x000000ff)
		FUNC1(c, dti, node, prop, "PCI reg config space address register number must be 0");

	if (func == 0) {
		FUNC5(unit_addr, sizeof(unit_addr), "%x", dev);
		if (FUNC6(unitname, unit_addr))
			return;
	}

	FUNC5(unit_addr, sizeof(unit_addr), "%x,%x", dev, func);
	if (FUNC6(unitname, unit_addr))
		return;

	FUNC0(c, dti, node, "PCI unit address format error, expected \"%s\"",
	     unit_addr);
}