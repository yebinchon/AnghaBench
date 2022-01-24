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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u8 ;
struct thread {int dummy; } ;
struct symbol {scalar_t__ start; scalar_t__ end; char* name; } ;
struct perf_event_attr {int dummy; } ;
struct addr_location {scalar_t__ addr; int cpu; struct symbol* sym; TYPE_1__* map; } ;
typedef  int /*<<< orphan*/  al ;
struct TYPE_3__ {int start; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCLINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct symbol* FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct addr_location*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addr_location*) ; 

__attribute__((used)) static int FUNC6(uint64_t addr, struct thread *thread,
			   u8 cpumode, int cpu, struct symbol **lastsym,
			   struct perf_event_attr *attr, FILE *fp)
{
	struct addr_location al;
	int off, printed = 0;

	FUNC4(&al, 0, sizeof(al));

	FUNC5(thread, cpumode, addr, &al);

	if ((*lastsym) && al.addr >= (*lastsym)->start && al.addr < (*lastsym)->end)
		return 0;

	al.cpu = cpu;
	al.sym = NULL;
	if (al.map)
		al.sym = FUNC2(al.map, al.addr);

	if (!al.sym)
		return 0;

	if (al.addr < al.sym->end)
		off = al.addr - al.sym->start;
	else
		off = al.addr - al.map->start - al.sym->start;
	printed += FUNC1(fp, "\t%s", al.sym->name);
	if (off)
		printed += FUNC1(fp, "%+d", off);
	printed += FUNC1(fp, ":");
	if (FUNC0(SRCLINE))
		printed += FUNC3(al.map, al.addr, "\t", fp);
	printed += FUNC1(fp, "\n");
	*lastsym = al.sym;

	return printed;
}