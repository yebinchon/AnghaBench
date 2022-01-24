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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 long FUNC2 (unsigned int,unsigned int) ; 
 long FUNC3 (unsigned int,unsigned int) ; 
 long FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(unsigned int cpu)
{
	long max_allowed_cstate = 2000000000;
	unsigned int cstate, cstates;

	cstates = FUNC1(cpu);
	if (cstates == 0) {
		FUNC5(FUNC0("CPU %u: No C-states info\n"), cpu);
		return;
	}

	FUNC5(FUNC0("active state:            C0\n"));
	FUNC5(FUNC0("max_cstate:              C%u\n"), cstates-1);
	FUNC5(FUNC0("maximum allowed latency: %lu usec\n"), max_allowed_cstate);
	FUNC5(FUNC0("states:\t\n"));
	for (cstate = 1; cstate < cstates; cstate++) {
		FUNC5(FUNC0("    C%d:                  "
			 "type[C%d] "), cstate, cstate);
		FUNC5(FUNC0("promotion[--] demotion[--] "));
		FUNC5(FUNC0("latency[%03lu] "),
		       FUNC2(cpu, cstate));
		FUNC5(FUNC0("usage[%08lu] "),
		       FUNC4(cpu, cstate));
		FUNC5(FUNC0("duration[%020Lu] \n"),
		       FUNC3(cpu, cstate));
	}
}