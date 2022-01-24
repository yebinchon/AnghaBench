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
struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* parent; } ;
struct dt_info {int dtsflags; struct node* dt; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int DTSF_PLUGIN ; 
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*,...) ; 
 struct node* FUNC2 (struct node*,int) ; 
 struct property* FUNC3 (struct node*,char*) ; 
 scalar_t__ FUNC4 (struct node*) ; 
 int FUNC5 (struct property*) ; 

__attribute__((used)) static void FUNC6(struct check *c,
				      struct dt_info *dti,
				      struct node *node)
{
	struct node *root = dti->dt;
	struct node *irq_node = NULL, *parent = node;
	struct property *irq_prop, *prop = NULL;
	int irq_cells, phandle;

	irq_prop = FUNC3(node, "interrupts");
	if (!irq_prop)
		return;

	if (irq_prop->val.len % sizeof(cell_t))
		FUNC1(c, dti, node, irq_prop, "size (%d) is invalid, expected multiple of %zu",
		     irq_prop->val.len, sizeof(cell_t));

	while (parent && !prop) {
		if (parent != node && FUNC4(parent)) {
			irq_node = parent;
			break;
		}

		prop = FUNC3(parent, "interrupt-parent");
		if (prop) {
			phandle = FUNC5(prop);
			if ((phandle == 0) || (phandle == -1)) {
				/* Give up if this is an overlay with
				 * external references */
				if (dti->dtsflags & DTSF_PLUGIN)
					return;
				FUNC1(c, dti, parent, prop, "Invalid phandle");
				continue;
			}

			irq_node = FUNC2(root, phandle);
			if (!irq_node) {
				FUNC1(c, dti, parent, prop, "Bad phandle");
				return;
			}
			if (!FUNC4(irq_node))
				FUNC0(c, dti, irq_node,
				     "Missing interrupt-controller or interrupt-map property");

			break;
		}

		parent = parent->parent;
	}

	if (!irq_node) {
		FUNC0(c, dti, node, "Missing interrupt-parent");
		return;
	}

	prop = FUNC3(irq_node, "#interrupt-cells");
	if (!prop) {
		FUNC0(c, dti, irq_node, "Missing #interrupt-cells in interrupt-parent");
		return;
	}

	irq_cells = FUNC5(prop);
	if (irq_prop->val.len % (irq_cells * sizeof(cell_t))) {
		FUNC1(c, dti, node, prop,
			  "size is (%d), expected multiple of %d",
			  irq_prop->val.len, (int)(irq_cells * sizeof(cell_t)));
	}
}