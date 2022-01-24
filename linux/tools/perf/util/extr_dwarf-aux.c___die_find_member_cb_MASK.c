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
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 scalar_t__ DW_TAG_member ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(Dwarf_Die *die_mem, void *data)
{
	const char *name = data;

	if (FUNC4(die_mem) == DW_TAG_member) {
		if (FUNC0(die_mem, name))
			return DIE_FIND_CB_END;
		else if (!FUNC3(die_mem)) {	/* Unnamed structure */
			Dwarf_Die type_die, tmp_die;
			if (FUNC2(die_mem, &type_die) &&
			    FUNC1(&type_die, name, &tmp_die))
				return DIE_FIND_CB_END;
		}
	}
	return DIE_FIND_CB_SIBLING;
}