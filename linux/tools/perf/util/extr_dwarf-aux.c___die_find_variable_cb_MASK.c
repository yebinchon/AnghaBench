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
struct __find_variable_param {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int DIE_FIND_CB_CONTINUE ; 
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 int /*<<< orphan*/  DW_AT_external ; 
 int /*<<< orphan*/  DW_AT_location ; 
 int DW_TAG_formal_parameter ; 
 int DW_TAG_variable ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Dwarf_Die *die_mem, void *data)
{
	struct __find_variable_param *fvp = data;
	Dwarf_Attribute attr;
	int tag;

	tag = FUNC3(die_mem);
	if ((tag == DW_TAG_formal_parameter ||
	     tag == DW_TAG_variable) &&
	    FUNC0(die_mem, fvp->name) &&
	/* Does the DIE have location information or external instance? */
	    (FUNC1(die_mem, DW_AT_external, &attr) ||
	     FUNC1(die_mem, DW_AT_location, &attr)))
		return DIE_FIND_CB_END;
	if (FUNC2(die_mem, fvp->addr))
		return DIE_FIND_CB_CONTINUE;
	else
		return DIE_FIND_CB_SIBLING;
}