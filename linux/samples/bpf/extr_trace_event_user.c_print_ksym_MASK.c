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
struct ksym {char* name; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 struct ksym* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int sys_read_seen ; 
 int sys_write_seen ; 

__attribute__((used)) static void FUNC3(__u64 addr)
{
	struct ksym *sym;

	if (!addr)
		return;
	sym = FUNC0(addr);
	if (!sym) {
		FUNC1("ksym not found. Is kallsyms loaded?\n");
		return;
	}

	FUNC1("%s;", sym->name);
	if (!FUNC2(sym->name, "sys_read"))
		sys_read_seen = true;
	else if (!FUNC2(sym->name, "sys_write"))
		sys_write_seen = true;
}