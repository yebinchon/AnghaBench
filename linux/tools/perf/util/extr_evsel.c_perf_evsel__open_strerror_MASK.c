#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct target {int /*<<< orphan*/  cpu_list; int /*<<< orphan*/  system_wide; } ;
struct TYPE_4__ {int /*<<< orphan*/  write_backward; int /*<<< orphan*/  type; int /*<<< orphan*/  precise_ip; int /*<<< orphan*/  sample_period; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
typedef  int /*<<< orphan*/  sbuf ;
struct TYPE_6__ {int /*<<< orphan*/  aux_output; int /*<<< orphan*/  clockid_wrong; int /*<<< orphan*/  clockid; int /*<<< orphan*/  write_backward; } ;

/* Variables and functions */
#define  EACCES 136 
#define  EBUSY 135 
#define  EINVAL 134 
#define  EMFILE 133 
#define  ENODEV 132 
#define  ENOENT 131 
#define  ENOMEM 130 
#define  EOPNOTSUPP 129 
#define  EPERM 128 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clockid ; 
 int /*<<< orphan*/  FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evsel*) ; 
 TYPE_3__ perf_missing_features ; 
 int FUNC5 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct evsel *evsel, struct target *target,
			      int err, char *msg, size_t size)
{
	char sbuf[STRERR_BUFSIZE];
	int printed = 0;

	switch (err) {
	case EPERM:
	case EACCES:
		if (err == EPERM)
			printed = FUNC5(msg, size,
				"No permission to enable %s event.\n\n",
				FUNC4(evsel));

		return FUNC5(msg + printed, size - printed,
		 "You may not have permission to collect %sstats.\n\n"
		 "Consider tweaking /proc/sys/kernel/perf_event_paranoid,\n"
		 "which controls use of the performance events system by\n"
		 "unprivileged users (without CAP_SYS_ADMIN).\n\n"
		 "The current value is %d:\n\n"
		 "  -1: Allow use of (almost) all events by all users\n"
		 "      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\n"
		 ">= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\n"
		 "      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\n"
		 ">= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\n"
		 ">= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\n\n"
		 "To make this setting permanent, edit /etc/sysctl.conf too, e.g.:\n\n"
		 "	kernel.perf_event_paranoid = -1\n" ,
				 target->system_wide ? "system-wide " : "",
				 FUNC3());
	case ENOENT:
		return FUNC5(msg, size, "The %s event is not supported.",
				 FUNC4(evsel));
	case EMFILE:
		return FUNC5(msg, size, "%s",
			 "Too many events are opened.\n"
			 "Probably the maximum number of open file descriptors has been reached.\n"
			 "Hint: Try again after reducing the number of events.\n"
			 "Hint: Try increasing the limit with 'ulimit -n <limit>'");
	case ENOMEM:
		if (FUNC1(evsel) &&
		    FUNC0("/proc/sys/kernel/perf_event_max_stack", F_OK) == 0)
			return FUNC5(msg, size,
					 "Not enough memory to setup event with callchain.\n"
					 "Hint: Try tweaking /proc/sys/kernel/perf_event_max_stack\n"
					 "Hint: Current value: %d", FUNC7());
		break;
	case ENODEV:
		if (target->cpu_list)
			return FUNC5(msg, size, "%s",
	 "No such device - did you specify an out-of-range profile CPU?");
		break;
	case EOPNOTSUPP:
		if (evsel->core.attr.sample_period != 0)
			return FUNC5(msg, size,
	"%s: PMU Hardware doesn't support sampling/overflow-interrupts. Try 'perf stat'",
					 FUNC4(evsel));
		if (evsel->core.attr.precise_ip)
			return FUNC5(msg, size, "%s",
	"\'precise\' request may not be supported. Try removing 'p' modifier.");
#if defined(__i386__) || defined(__x86_64__)
		if (evsel->core.attr.type == PERF_TYPE_HARDWARE)
			return FUNC5(msg, size, "%s",
	"No hardware sampling interrupt available.\n");
#endif
		break;
	case EBUSY:
		if (FUNC2("oprofiled"))
			return FUNC5(msg, size,
	"The PMU counters are busy/taken by another profiler.\n"
	"We found oprofile daemon running, please stop it and try again.");
		break;
	case EINVAL:
		if (evsel->core.attr.write_backward && perf_missing_features.write_backward)
			return FUNC5(msg, size, "Reading from overwrite event is not supported by this kernel.");
		if (perf_missing_features.clockid)
			return FUNC5(msg, size, "clockid feature not supported.");
		if (perf_missing_features.clockid_wrong)
			return FUNC5(msg, size, "wrong clockid (%d).", clockid);
		if (perf_missing_features.aux_output)
			return FUNC5(msg, size, "The 'aux_output' feature is not supported, update the kernel.");
		break;
	default:
		break;
	}

	return FUNC5(msg, size,
	"The sys_perf_event_open() syscall returned with %d (%s) for event (%s).\n"
	"/bin/dmesg | grep -i perf may provide additional information.\n",
			 err, FUNC6(err, sbuf, sizeof(sbuf)),
			 FUNC4(evsel));
}