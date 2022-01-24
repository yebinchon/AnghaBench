#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sym_start; } ;
typedef  TYPE_1__ kdb_symtab_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC4(const char *symname, kdb_symtab_t *symtab)
{
	if (FUNC0(AR))
		FUNC2("kdbgetsymval: symname=%s, symtab=%px\n", symname,
			   symtab);
	FUNC3(symtab, 0, sizeof(*symtab));
	symtab->sym_start = FUNC1(symname);
	if (symtab->sym_start) {
		if (FUNC0(AR))
			FUNC2("kdbgetsymval: returns 1, "
				   "symtab->sym_start=0x%lx\n",
				   symtab->sym_start);
		return 1;
	}
	if (FUNC0(AR))
		FUNC2("kdbgetsymval: returns 0\n");
	return 0;
}