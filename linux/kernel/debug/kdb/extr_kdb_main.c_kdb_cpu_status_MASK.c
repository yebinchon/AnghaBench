#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  enter_kgdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NR_CPUS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* kgdb_info ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	int i, start_cpu, first_print = 1;
	char state, prev_state = '?';

	FUNC2("Currently on cpu %d\n", FUNC4());
	FUNC2("Available cpus: ");
	for (start_cpu = -1, i = 0; i < NR_CPUS; i++) {
		if (!FUNC1(i)) {
			state = 'F';	/* cpu is offline */
		} else if (!kgdb_info[i].enter_kgdb) {
			state = 'D';	/* cpu is online but unresponsive */
		} else {
			state = ' ';	/* cpu is responding to kdb */
			if (FUNC3(FUNC0(i)) == 'I')
				state = 'I';	/* idle task */
		}
		if (state != prev_state) {
			if (prev_state != '?') {
				if (!first_print)
					FUNC2(", ");
				first_print = 0;
				FUNC2("%d", start_cpu);
				if (start_cpu < i-1)
					FUNC2("-%d", i-1);
				if (prev_state != ' ')
					FUNC2("(%c)", prev_state);
			}
			prev_state = state;
			start_cpu = i;
		}
	}
	/* print the trailing cpus, ignoring them if they are all offline */
	if (prev_state != 'F') {
		if (!first_print)
			FUNC2(", ");
		FUNC2("%d", start_cpu);
		if (start_cpu < i-1)
			FUNC2("-%d", i-1);
		if (prev_state != ' ')
			FUNC2("(%c)", prev_state);
	}
	FUNC2("\n");
}