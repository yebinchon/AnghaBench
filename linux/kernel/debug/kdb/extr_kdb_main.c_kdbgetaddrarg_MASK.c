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
struct TYPE_4__ {unsigned long sym_start; } ;
typedef  TYPE_1__ kdb_symtab_t ;

/* Variables and functions */
 int KDB_ARGCOUNT ; 
 int KDB_ENABLE_FLOW_CTRL ; 
 int KDB_ENABLE_MEM_READ ; 
 int KDB_INVADDRFMT ; 
 int KDB_NOPERM ; 
 int KDB_NOTIMP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  kdb_cmd_enabled ; 
 int FUNC2 (char*,TYPE_1__*) ; 
 int FUNC3 (char const*,unsigned long*) ; 
 int FUNC4 (char*,unsigned long*) ; 
 int FUNC5 (unsigned long,TYPE_1__*) ; 
 char* FUNC6 (char*,char*) ; 

int FUNC7(int argc, const char **argv, int *nextarg,
		  unsigned long *value,  long *offset,
		  char **name)
{
	unsigned long addr;
	unsigned long off = 0;
	int positive;
	int diag;
	int found = 0;
	char *symname;
	char symbol = '\0';
	char *cp;
	kdb_symtab_t symtab;

	/*
	 * If the enable flags prohibit both arbitrary memory access
	 * and flow control then there are no reasonable grounds to
	 * provide symbol lookup.
	 */
	if (!FUNC0(KDB_ENABLE_MEM_READ | KDB_ENABLE_FLOW_CTRL,
			     kdb_cmd_enabled, false))
		return KDB_NOPERM;

	/*
	 * Process arguments which follow the following syntax:
	 *
	 *  symbol | numeric-address [+/- numeric-offset]
	 *  %register
	 *  $environment-variable
	 */

	if (*nextarg > argc)
		return KDB_ARGCOUNT;

	symname = (char *)argv[*nextarg];

	/*
	 * If there is no whitespace between the symbol
	 * or address and the '+' or '-' symbols, we
	 * remember the character and replace it with a
	 * null so the symbol/value can be properly parsed
	 */
	cp = FUNC6(symname, "+-");
	if (cp != NULL) {
		symbol = *cp;
		*cp++ = '\0';
	}

	if (symname[0] == '$') {
		diag = FUNC4(&symname[1], &addr);
		if (diag)
			return diag;
	} else if (symname[0] == '%') {
		diag = FUNC1();
		if (diag)
			return diag;
		/* Implement register values with % at a later time as it is
		 * arch optional.
		 */
		return KDB_NOTIMP;
	} else {
		found = FUNC2(symname, &symtab);
		if (found) {
			addr = symtab.sym_start;
		} else {
			diag = FUNC3(argv[*nextarg], &addr);
			if (diag)
				return diag;
		}
	}

	if (!found)
		found = FUNC5(addr, &symtab);

	(*nextarg)++;

	if (name)
		*name = symname;
	if (value)
		*value = addr;
	if (offset && name && *name)
		*offset = addr - symtab.sym_start;

	if ((*nextarg > argc)
	 && (symbol == '\0'))
		return 0;

	/*
	 * check for +/- and offset
	 */

	if (symbol == '\0') {
		if ((argv[*nextarg][0] != '+')
		 && (argv[*nextarg][0] != '-')) {
			/*
			 * Not our argument.  Return.
			 */
			return 0;
		} else {
			positive = (argv[*nextarg][0] == '+');
			(*nextarg)++;
		}
	} else
		positive = (symbol == '+');

	/*
	 * Now there must be an offset!
	 */
	if ((*nextarg > argc)
	 && (symbol == '\0')) {
		return KDB_INVADDRFMT;
	}

	if (!symbol) {
		cp = (char *)argv[*nextarg];
		(*nextarg)++;
	}

	diag = FUNC3(cp, &off);
	if (diag)
		return diag;

	if (!positive)
		off = -off;

	if (offset)
		*offset += off;

	if (value)
		*value += off;

	return 0;
}