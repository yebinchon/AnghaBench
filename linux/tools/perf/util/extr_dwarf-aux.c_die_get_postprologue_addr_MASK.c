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
typedef  int /*<<< orphan*/  Dwarf_Lines ;
typedef  int /*<<< orphan*/  Dwarf_Line ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(unsigned long entrypc_idx,
				      Dwarf_Lines *lines,
				      unsigned long nr_lines,
				      Dwarf_Addr highpc,
				      Dwarf_Addr *postprologue_addr)
{
	unsigned long i;
	int entrypc_lno, lno;
	Dwarf_Line *line;
	Dwarf_Addr addr;
	bool p_end;

	/* entrypc_lno is actual source line number */
	line = FUNC3(lines, entrypc_idx);
	if (FUNC1(line, &entrypc_lno))
		return false;

	for (i = entrypc_idx; i < nr_lines; i++) {
		line = FUNC3(lines, i);

		if (FUNC0(line, &addr) ||
		    FUNC1(line, &lno)    ||
		    FUNC2(line, &p_end))
			return false;

		/* highpc is exclusive. [entrypc,highpc) */
		if (addr >= highpc)
			break;

		/* clang supports prologue-end marker */
		if (p_end)
			break;

		/* Actual next line in source */
		if (lno != entrypc_lno)
			break;

		/*
		 * Single source line can have multiple line records.
		 * For Example,
		 *     void foo() { printf("hello\n"); }
		 * contains two line records. One points to declaration and
		 * other points to printf() line. Variable 'lno' won't get
		 * incremented in this case but 'i' will.
		 */
		if (i != entrypc_idx)
			break;
	}

	FUNC0(line, postprologue_addr);
	if (*postprologue_addr >= highpc)
		FUNC0(FUNC3(lines, i - 1),
			       postprologue_addr);

	return true;
}