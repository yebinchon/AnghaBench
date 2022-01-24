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
struct node {int /*<<< orphan*/  parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*,...) ; 
 struct property* FUNC2 (struct node*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct check *c, struct dt_info *dti,
			     struct node *node)
{
	struct property *prop;
	int addr_cells, size_cells, entrylen;

	prop = FUNC2(node, "reg");
	if (!prop)
		return; /* No "reg", that's fine */

	if (!node->parent) {
		FUNC0(c, dti, node, "Root node has a \"reg\" property");
		return;
	}

	if (prop->val.len == 0)
		FUNC1(c, dti, node, prop, "property is empty");

	addr_cells = FUNC3(node->parent);
	size_cells = FUNC4(node->parent);
	entrylen = (addr_cells + size_cells) * sizeof(cell_t);

	if (!entrylen || (prop->val.len % entrylen) != 0)
		FUNC1(c, dti, node, prop, "property has invalid length (%d bytes) "
			  "(#address-cells == %d, #size-cells == %d)",
			  prop->val.len, addr_cells, size_cells);
}