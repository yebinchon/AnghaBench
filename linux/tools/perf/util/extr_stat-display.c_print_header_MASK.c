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
struct target {char* cpu_list; char* pid; char* tid; scalar_t__ system_wide; } ;
struct perf_stat_config {int run_count; int /*<<< orphan*/  csv_output; int /*<<< orphan*/ * output; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (struct target*) ; 

__attribute__((used)) static void FUNC3(struct perf_stat_config *config,
			 struct target *_target,
			 int argc, const char **argv)
{
	FILE *output = config->output;
	int i;

	FUNC0(stdout);

	if (!config->csv_output) {
		FUNC1(output, "\n");
		FUNC1(output, " Performance counter stats for ");
		if (_target->system_wide)
			FUNC1(output, "\'system wide");
		else if (_target->cpu_list)
			FUNC1(output, "\'CPU(s) %s", _target->cpu_list);
		else if (!FUNC2(_target)) {
			FUNC1(output, "\'%s", argv ? argv[0] : "pipe");
			for (i = 1; argv && (i < argc); i++)
				FUNC1(output, " %s", argv[i]);
		} else if (_target->pid)
			FUNC1(output, "process id \'%s", _target->pid);
		else
			FUNC1(output, "thread id \'%s", _target->tid);

		FUNC1(output, "\'");
		if (config->run_count > 1)
			FUNC1(output, " (%d runs)", config->run_count);
		FUNC1(output, ":\n\n");
	}
}