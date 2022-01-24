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
typedef  int /*<<< orphan*/  unit_addr ;
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* parent; int /*<<< orphan*/ * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct node*,char*) ; 
 char* FUNC3 (struct node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  spi_bus ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(struct check *c, struct dt_info *dti, struct node *node)
{
	struct property *prop;
	const char *unitname = FUNC3(node);
	char unit_addr[9];
	uint32_t reg = 0;
	cell_t *cells = NULL;

	if (!node->parent || (node->parent->bus != &spi_bus))
		return;

	if (FUNC2(node->parent, "spi-slave"))
		return;

	prop = FUNC2(node, "reg");
	if (prop)
		cells = (cell_t *)prop->val.val;

	if (!cells) {
		FUNC0(c, dti, node, "missing or empty reg property");
		return;
	}

	reg = FUNC1(*cells);
	FUNC4(unit_addr, sizeof(unit_addr), "%x", reg);
	if (!FUNC5(unitname, unit_addr))
		FUNC0(c, dti, node, "SPI bus unit address format error, expected \"%s\"",
		     unit_addr);
}