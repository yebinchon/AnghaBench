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
struct trace {int trace_pgfaults; scalar_t__ trace_syscalls; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 int ENOMEM ; 
 int TRACE_PFMAJ ; 
 int TRACE_PFMIN ; 
 char** FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct trace *trace, int argc, const char **argv)
{
	unsigned int rec_argc, i, j;
	const char **rec_argv;
	const char * const record_args[] = {
		"record",
		"-R",
		"-m", "1024",
		"-c", "1",
	};

	const char * const sc_args[] = { "-e", };
	unsigned int sc_args_nr = FUNC0(sc_args);
	const char * const majpf_args[] = { "-e", "major-faults" };
	unsigned int majpf_args_nr = FUNC0(majpf_args);
	const char * const minpf_args[] = { "-e", "minor-faults" };
	unsigned int minpf_args_nr = FUNC0(minpf_args);

	/* +1 is for the event string below */
	rec_argc = FUNC0(record_args) + sc_args_nr + 1 +
		majpf_args_nr + minpf_args_nr + argc;
	rec_argv = FUNC1(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	j = 0;
	for (i = 0; i < FUNC0(record_args); i++)
		rec_argv[j++] = record_args[i];

	if (trace->trace_syscalls) {
		for (i = 0; i < sc_args_nr; i++)
			rec_argv[j++] = sc_args[i];

		/* event string may be different for older kernels - e.g., RHEL6 */
		if (FUNC4("raw_syscalls:sys_enter"))
			rec_argv[j++] = "raw_syscalls:sys_enter,raw_syscalls:sys_exit";
		else if (FUNC4("syscalls:sys_enter"))
			rec_argv[j++] = "syscalls:sys_enter,syscalls:sys_exit";
		else {
			FUNC5("Neither raw_syscalls nor syscalls events exist.\n");
			FUNC3(rec_argv);
			return -1;
		}
	}

	if (trace->trace_pgfaults & TRACE_PFMAJ)
		for (i = 0; i < majpf_args_nr; i++)
			rec_argv[j++] = majpf_args[i];

	if (trace->trace_pgfaults & TRACE_PFMIN)
		for (i = 0; i < minpf_args_nr; i++)
			rec_argv[j++] = minpf_args[i];

	for (i = 0; i < (unsigned int)argc; i++)
		rec_argv[j++] = argv[i];

	return FUNC2(j, rec_argv);
}