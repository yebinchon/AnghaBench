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
 int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 char* FUNC3 (unsigned int,unsigned int) ; 
 char* FUNC4 (unsigned int,unsigned int) ; 
 char* FUNC5 (unsigned int,unsigned int) ; 
 char* FUNC6 (unsigned int,unsigned int) ; 
 char* FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void FUNC10(unsigned int cpu, int verbose)
{
	unsigned int idlestates, idlestate;
	char *tmp;

	idlestates = FUNC2(cpu);
	if (idlestates == 0) {
		FUNC9(FUNC0("CPU %u: No idle states\n"), cpu);
		return;
	}

	FUNC9(FUNC0("Number of idle states: %d\n"), idlestates);
	FUNC9(FUNC0("Available idle states:"));
	for (idlestate = 0; idlestate < idlestates; idlestate++) {
		tmp = FUNC5(cpu, idlestate);
		if (!tmp)
			continue;
		FUNC9(" %s", tmp);
		FUNC8(tmp);
	}
	FUNC9("\n");

	if (!verbose)
		return;

	for (idlestate = 0; idlestate < idlestates; idlestate++) {
		int disabled = FUNC1(cpu, idlestate);
		/* Disabled interface not supported on older kernels */
		if (disabled < 0)
			disabled = 0;
		tmp = FUNC5(cpu, idlestate);
		if (!tmp)
			continue;
		FUNC9("%s%s:\n", tmp, (disabled) ? " (DISABLED) " : "");
		FUNC8(tmp);

		tmp = FUNC3(cpu, idlestate);
		if (!tmp)
			continue;
		FUNC9(FUNC0("Flags/Description: %s\n"), tmp);
		FUNC8(tmp);

		FUNC9(FUNC0("Latency: %lu\n"),
		       FUNC4(cpu, idlestate));
		FUNC9(FUNC0("Usage: %lu\n"),
		       FUNC7(cpu, idlestate));
		FUNC9(FUNC0("Duration: %llu\n"),
		       FUNC6(cpu, idlestate));
	}
}