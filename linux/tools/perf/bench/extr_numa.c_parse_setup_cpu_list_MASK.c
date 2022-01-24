#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread_data {int /*<<< orphan*/  bind_cpumask; } ;
struct TYPE_3__ {int nr_tasks; int nr_cpus; int /*<<< orphan*/  cpu_list_str; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char**,char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct thread_data *td;
	char *str0, *str;
	int t;

	if (!g->p.cpu_list_str)
		return 0;

	FUNC4("g->p.nr_tasks: %d\n", g->p.nr_tasks);

	str0 = str = FUNC7(g->p.cpu_list_str);
	t = 0;

	FUNC0(!str);

	FUNC10("# binding tasks to CPUs:\n");
	FUNC10("#  ");

	while (true) {
		int bind_cpu, bind_cpu_0, bind_cpu_1;
		char *tok, *tok_end, *tok_step, *tok_len, *tok_mul;
		int bind_len;
		int step;
		int mul;

		tok = FUNC8(&str, ",");
		if (!tok)
			break;

		tok_end = FUNC9(tok, "-");

		FUNC4("\ntoken: {%s}, end: {%s}\n", tok, tok_end);
		if (!tok_end) {
			/* Single CPU specified: */
			bind_cpu_0 = bind_cpu_1 = FUNC3(tok);
		} else {
			/* CPU range specified (for example: "5-11"): */
			bind_cpu_0 = FUNC3(tok);
			bind_cpu_1 = FUNC3(tok_end + 1);
		}

		step = 1;
		tok_step = FUNC9(tok, "#");
		if (tok_step) {
			step = FUNC3(tok_step + 1);
			FUNC0(step <= 0 || step >= g->p.nr_cpus);
		}

		/*
		 * Mask length.
		 * Eg: "--cpus 8_4-16#4" means: '--cpus 8_4,12_4,16_4',
		 * where the _4 means the next 4 CPUs are allowed.
		 */
		bind_len = 1;
		tok_len = FUNC9(tok, "_");
		if (tok_len) {
			bind_len = FUNC3(tok_len + 1);
			FUNC0(bind_len <= 0 || bind_len > g->p.nr_cpus);
		}

		/* Multiplicator shortcut, "0x8" is a shortcut for: "0,0,0,0,0,0,0,0" */
		mul = 1;
		tok_mul = FUNC9(tok, "x");
		if (tok_mul) {
			mul = FUNC3(tok_mul + 1);
			FUNC0(mul <= 0);
		}

		FUNC4("CPUs: %d_%d-%d#%dx%d\n", bind_cpu_0, bind_len, bind_cpu_1, step, mul);

		if (bind_cpu_0 >= g->p.nr_cpus || bind_cpu_1 >= g->p.nr_cpus) {
			FUNC6("\nTest not applicable, system has only %d CPUs.\n", g->p.nr_cpus);
			return -1;
		}

		FUNC0(bind_cpu_0 < 0 || bind_cpu_1 < 0);
		FUNC0(bind_cpu_0 > bind_cpu_1);

		for (bind_cpu = bind_cpu_0; bind_cpu <= bind_cpu_1; bind_cpu += step) {
			int i;

			for (i = 0; i < mul; i++) {
				int cpu;

				if (t >= g->p.nr_tasks) {
					FUNC6("\n# NOTE: ignoring bind CPUs starting at CPU#%d\n #", bind_cpu);
					goto out;
				}
				td = g->threads + t;

				if (t)
					FUNC10(",");
				if (bind_len > 1) {
					FUNC10("%2d/%d", bind_cpu, bind_len);
				} else {
					FUNC10("%2d", bind_cpu);
				}

				FUNC2(&td->bind_cpumask);
				for (cpu = bind_cpu; cpu < bind_cpu+bind_len; cpu++) {
					FUNC0(cpu < 0 || cpu >= g->p.nr_cpus);
					FUNC1(cpu, &td->bind_cpumask);
				}
				t++;
			}
		}
	}
out:

	FUNC10("\n");

	if (t < g->p.nr_tasks)
		FUNC6("# NOTE: %d tasks bound, %d tasks unbound\n", t, g->p.nr_tasks - t);

	FUNC5(str0);
	return 0;
}