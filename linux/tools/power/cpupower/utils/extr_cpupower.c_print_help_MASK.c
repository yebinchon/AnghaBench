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
struct TYPE_3__ {char* cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int i;

#ifdef DEBUG
	printf(_("Usage:\tcpupower [-d|--debug] [-c|--cpu cpulist ] <command> [<args>]\n"));
#else
	FUNC2(FUNC1("Usage:\tcpupower [-c|--cpu cpulist ] <command> [<args>]\n"));
#endif
	FUNC2(FUNC1("Supported commands are:\n"));
	for (i = 0; i < FUNC0(commands); i++)
		FUNC2("\t%s\n", commands[i].cmd);
	FUNC2(FUNC1("\nNot all commands can make use of the -c cpulist option.\n"));
	FUNC2(FUNC1("\nUse 'cpupower help <command>' for getting help for above commands.\n"));
}