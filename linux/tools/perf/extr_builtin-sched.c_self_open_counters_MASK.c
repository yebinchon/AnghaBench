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
struct rlimit {unsigned long rlim_cur; scalar_t__ rlim_max; } ;
struct perf_sched {unsigned long nr_tasks; scalar_t__ force; } ;
struct perf_event_attr {int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EMFILE ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  PERF_COUNT_SW_TASK_CLOCK ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct perf_sched *sched, unsigned long cur_task)
{
	struct perf_event_attr attr;
	char sbuf[STRERR_BUFSIZE], info[STRERR_BUFSIZE];
	int fd;
	struct rlimit limit;
	bool need_privilege = false;

	FUNC3(&attr, 0, sizeof(attr));

	attr.type = PERF_TYPE_SOFTWARE;
	attr.config = PERF_COUNT_SW_TASK_CLOCK;

force_again:
	fd = FUNC9(&attr, 0, -1, -1,
				 FUNC4());

	if (fd < 0) {
		if (errno == EMFILE) {
			if (sched->force) {
				FUNC0(FUNC2(RLIMIT_NOFILE, &limit) == -1);
				limit.rlim_cur += sched->nr_tasks - cur_task;
				if (limit.rlim_cur > limit.rlim_max) {
					limit.rlim_max = limit.rlim_cur;
					need_privilege = true;
				}
				if (FUNC6(RLIMIT_NOFILE, &limit) == -1) {
					if (need_privilege && errno == EPERM)
						FUNC8(info, "Need privilege\n");
				} else
					goto force_again;
			} else
				FUNC8(info, "Have a try with -f option\n");
		}
		FUNC5("Error: sys_perf_event_open() syscall returned "
		       "with %d (%s)\n%s", fd,
		       FUNC7(errno, sbuf, sizeof(sbuf)), info);
		FUNC1(EXIT_FAILURE);
	}
	return fd;
}