#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct probe_trace_point {unsigned long offset; unsigned long address; int retprobe; int /*<<< orphan*/  symbol; } ;
struct TYPE_3__ {scalar_t__ st_value; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  int /*<<< orphan*/  Dwfl_Module ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(Dwarf_Die *sp_die, Dwfl_Module *mod,
				  Dwarf_Addr paddr, bool retprobe,
				  const char *function,
				  struct probe_trace_point *tp)
{
	Dwarf_Addr eaddr, highaddr;
	GElf_Sym sym;
	const char *symbol;

	/* Verify the address is correct */
	if (FUNC1(sp_die, &eaddr) != 0) {
		FUNC4("Failed to get entry address of %s\n",
			   FUNC0(sp_die));
		return -ENOENT;
	}
	if (FUNC2(sp_die, &highaddr) != 0) {
		FUNC4("Failed to get end address of %s\n",
			   FUNC0(sp_die));
		return -ENOENT;
	}
	if (paddr > highaddr) {
		FUNC4("Offset specified is greater than size of %s\n",
			   FUNC0(sp_die));
		return -EINVAL;
	}

	symbol = FUNC0(sp_die);
	if (!symbol) {
		/* Try to get the symbol name from symtab */
		symbol = FUNC3(mod, paddr, &sym, NULL);
		if (!symbol) {
			FUNC4("Failed to find symbol at 0x%lx\n",
				   (unsigned long)paddr);
			return -ENOENT;
		}
		eaddr = sym.st_value;
	}
	tp->offset = (unsigned long)(paddr - eaddr);
	tp->address = (unsigned long)paddr;
	tp->symbol = FUNC5(symbol);
	if (!tp->symbol)
		return -ENOMEM;

	/* Return probe must be on the head of a subprogram */
	if (retprobe) {
		if (eaddr != paddr) {
			FUNC4("Failed to find \"%s%%return\",\n"
				   " because %s is an inlined function and"
				   " has no return point.\n", function,
				   function);
			return -EINVAL;
		}
		tp->retprobe = true;
	}

	return 0;
}