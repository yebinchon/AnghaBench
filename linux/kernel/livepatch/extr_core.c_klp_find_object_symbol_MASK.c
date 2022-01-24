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
struct klp_find_arg {char const* objname; char const* name; unsigned long addr; int count; unsigned long pos; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct klp_find_arg*) ; 
 int /*<<< orphan*/  klp_find_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct klp_find_arg*) ; 
 int /*<<< orphan*/  module_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(const char *objname, const char *name,
				  unsigned long sympos, unsigned long *addr)
{
	struct klp_find_arg args = {
		.objname = objname,
		.name = name,
		.addr = 0,
		.count = 0,
		.pos = sympos,
	};

	FUNC2(&module_mutex);
	if (objname)
		FUNC1(klp_find_callback, &args);
	else
		FUNC0(klp_find_callback, &args);
	FUNC3(&module_mutex);

	/*
	 * Ensure an address was found. If sympos is 0, ensure symbol is unique;
	 * otherwise ensure the symbol position count matches sympos.
	 */
	if (args.addr == 0)
		FUNC4("symbol '%s' not found in symbol table\n", name);
	else if (args.count > 1 && sympos == 0) {
		FUNC4("unresolvable ambiguity for symbol '%s' in object '%s'\n",
		       name, objname);
	} else if (sympos != args.count && sympos > 0) {
		FUNC4("symbol position %lu for symbol '%s' in object '%s' not found\n",
		       sympos, name, objname ? objname : "vmlinux");
	} else {
		*addr = args.addr;
		return 0;
	}

	*addr = 0;
	return -EINVAL;
}