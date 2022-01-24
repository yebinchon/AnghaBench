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
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(Dwarf_Die *sp_die, Dwarf_Die *cu_die,
		       Dwarf_Addr *entrypc)
{
	size_t nr_lines = 0;
	unsigned long entrypc_idx = 0;
	Dwarf_Lines *lines = NULL;
	Dwarf_Addr postprologue_addr;
	Dwarf_Addr highpc;

	if (FUNC3(sp_die, &highpc))
		return;

	if (FUNC2(cu_die, &lines, &nr_lines))
		return;

	if (!FUNC1(lines, nr_lines, *entrypc, &entrypc_idx))
		return;

	if (!FUNC0(entrypc_idx, lines, nr_lines,
				       highpc, &postprologue_addr))
		return;

	*entrypc = postprologue_addr;
}