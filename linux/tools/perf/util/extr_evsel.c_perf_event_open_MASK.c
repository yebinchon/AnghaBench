#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int precise_ip; } ;
struct TYPE_4__ {TYPE_2__ attr; } ;
struct evsel {TYPE_1__ core; int /*<<< orphan*/  precise_max; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct evsel *evsel,
			   pid_t pid, int cpu, int group_fd,
			   unsigned long flags)
{
	int precise_ip = evsel->core.attr.precise_ip;
	int fd;

	while (1) {
		FUNC1("sys_perf_event_open: pid %d  cpu %d  group_fd %d  flags %#lx",
			  pid, cpu, group_fd, flags);

		fd = FUNC2(&evsel->core.attr, pid, cpu, group_fd, flags);
		if (fd >= 0)
			break;

		/* Do not try less precise if not requested. */
		if (!evsel->precise_max)
			break;

		/*
		 * We tried all the precise_ip values, and it's
		 * still failing, so leave it to standard fallback.
		 */
		if (!evsel->core.attr.precise_ip) {
			evsel->core.attr.precise_ip = precise_ip;
			break;
		}

		FUNC1("\nsys_perf_event_open failed, error %d\n", -ENOTSUP);
		evsel->core.attr.precise_ip--;
		FUNC1("decreasing precise_ip by one (%d)\n", evsel->core.attr.precise_ip);
		FUNC0(&evsel->core.attr);
	}

	return fd;
}