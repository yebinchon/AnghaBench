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
struct TYPE_2__ {scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* parent; int /*<<< orphan*/ * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,struct property*,char*,unsigned int,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct node*,char*) ; 
 int /*<<< orphan*/  pci_bus ; 

__attribute__((used)) static void FUNC3(struct check *c, struct dt_info *dti, struct node *node)
{
	struct property *prop;
	unsigned int bus_num, min_bus, max_bus;
	cell_t *cells;

	if (!node->parent || (node->parent->bus != &pci_bus))
		return;

	prop = FUNC2(node, "reg");
	if (!prop)
		return;

	cells = (cell_t *)prop->val.val;
	bus_num = (FUNC1(cells[0]) & 0x00ff0000) >> 16;

	prop = FUNC2(node->parent, "bus-range");
	if (!prop) {
		min_bus = max_bus = 0;
	} else {
		cells = (cell_t *)prop->val.val;
		min_bus = FUNC1(cells[0]);
		max_bus = FUNC1(cells[0]);
	}
	if ((bus_num < min_bus) || (bus_num > max_bus))
		FUNC0(c, dti, node, prop, "PCI bus number %d out of range, expected (%d - %d)",
			  bus_num, min_bus, max_bus);
}