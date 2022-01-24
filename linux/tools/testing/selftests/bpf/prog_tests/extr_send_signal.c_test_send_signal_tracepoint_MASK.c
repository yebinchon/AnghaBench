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
struct perf_event_attr {int sample_type; int sample_period; int wakeup_events; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_TRACEPOINT ; 
 scalar_t__ FUNC0 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int PERF_SAMPLE_RAW ; 
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event_attr*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
	const char *id_path = "/sys/kernel/debug/tracing/events/syscalls/sys_enter_nanosleep/id";
	struct perf_event_attr attr = {
		.type = PERF_TYPE_TRACEPOINT,
		.sample_type = PERF_SAMPLE_RAW | PERF_SAMPLE_CALLCHAIN,
		.sample_period = 1,
		.wakeup_events = 1,
	};
	__u32 duration = 0;
	int bytes, efd;
	char buf[256];

	efd = FUNC2(id_path, O_RDONLY, 0);
	if (FUNC0(efd < 0, "tracepoint",
		  "open syscalls/sys_enter_nanosleep/id failure: %s\n",
		  FUNC4(errno)))
		return;

	bytes = FUNC3(efd, buf, sizeof(buf));
	FUNC1(efd);
	if (FUNC0(bytes <= 0 || bytes >= sizeof(buf), "tracepoint",
		  "read syscalls/sys_enter_nanosleep/id failure: %s\n",
		  FUNC4(errno)))
		return;

	attr.config = FUNC5(buf, NULL, 0);

	FUNC6(&attr, BPF_PROG_TYPE_TRACEPOINT, "tracepoint");
}