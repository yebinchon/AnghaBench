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
typedef  int /*<<< orphan*/  kdb_symtab_t ;

/* Variables and functions */
 int KDB_SP_NEWLINE ; 
 int KDB_SP_SYMSIZE ; 
 int KDB_SP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 

void FUNC3(const char *name, unsigned long val)
{
	kdb_symtab_t symtab;
	FUNC0("  %-11.11s ", name);
	if (FUNC2(val, &symtab))
		FUNC1(val, &symtab,
				 KDB_SP_VALUE|KDB_SP_SYMSIZE|KDB_SP_NEWLINE);
	else
		FUNC0("0x%lx\n", val);
}