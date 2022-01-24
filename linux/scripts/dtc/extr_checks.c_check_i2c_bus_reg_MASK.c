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
typedef  int uint32_t ;
struct TYPE_4__ {int len; scalar_t__ val; } ;
struct property {TYPE_2__ val; } ;
struct node {TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,struct node*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct check*,struct dt_info*,struct node*,struct property*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct property* FUNC3 (struct node*,char*) ; 
 char* FUNC4 (struct node*) ; 
 int /*<<< orphan*/  i2c_bus ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(struct check *c, struct dt_info *dti, struct node *node)
{
	struct property *prop;
	const char *unitname = FUNC4(node);
	char unit_addr[17];
	uint32_t reg = 0;
	int len;
	cell_t *cells = NULL;

	if (!node->parent || (node->parent->bus != &i2c_bus))
		return;

	prop = FUNC3(node, "reg");
	if (prop)
		cells = (cell_t *)prop->val.val;

	if (!cells) {
		FUNC0(c, dti, node, "missing or empty reg property");
		return;
	}

	reg = FUNC2(*cells);
	FUNC5(unit_addr, sizeof(unit_addr), "%x", reg);
	if (!FUNC6(unitname, unit_addr))
		FUNC0(c, dti, node, "I2C bus unit address format error, expected \"%s\"",
		     unit_addr);

	for (len = prop->val.len; len > 0; len -= 4) {
		reg = FUNC2(*(cells++));
		if (reg > 0x3ff)
			FUNC1(c, dti, node, prop, "I2C address must be less than 10-bits, got \"0x%x\"",
				  reg);

	}
}