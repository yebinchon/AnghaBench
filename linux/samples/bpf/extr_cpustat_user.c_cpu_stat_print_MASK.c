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
struct cpu_stat_data {int* cstate; int* pstate; } ;

/* Variables and functions */
 int MAX_CPU ; 
 int MAX_CSTATE_ENTRIES ; 
 int MAX_PSTATE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct cpu_stat_data* stat_data ; 

__attribute__((used)) static void FUNC2(void)
{
	int i, j;
	char state_str[sizeof("cstate-9")];
	struct cpu_stat_data *data;

	/* Clear screen */
	FUNC0("\033[2J");

	/* Header */
	FUNC0("\nCPU states statistics:\n");
	FUNC0("%-10s ", "state(ms)");

	for (i = 0; i < MAX_CSTATE_ENTRIES; i++) {
		FUNC1(state_str, "cstate-%d", i);
		FUNC0("%-11s ", state_str);
	}

	for (i = 0; i < MAX_PSTATE_ENTRIES; i++) {
		FUNC1(state_str, "pstate-%d", i);
		FUNC0("%-11s ", state_str);
	}

	FUNC0("\n");

	for (j = 0; j < MAX_CPU; j++) {
		data = &stat_data[j];

		FUNC0("CPU-%-6d ", j);
		for (i = 0; i < MAX_CSTATE_ENTRIES; i++)
			FUNC0("%-11ld ", data->cstate[i] / 1000000);

		for (i = 0; i < MAX_PSTATE_ENTRIES; i++)
			FUNC0("%-11ld ", data->pstate[i] / 1000000);

		FUNC0("\n");
	}
}