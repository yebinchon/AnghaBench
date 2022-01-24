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
struct perf_event_attr {int sample_period; int wakeup_events; int /*<<< orphan*/  sample_type; int /*<<< orphan*/  type; int /*<<< orphan*/  config; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int BPF_FD_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_TRACEPOINT ; 
 scalar_t__ FUNC0 (int,char*,char*,int,char*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 int /*<<< orphan*/  PERF_SAMPLE_RAW ; 
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/  __NR_perf_event_open ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* errno ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct perf_event_attr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(const char *probe_name,
				       const char *tp_name)
{
	const char *file = "./test_tracepoint.o";
	int err, bytes, efd, prog_fd, pmu_fd;
	struct perf_event_attr attr = {};
	__u64 probe_offset, probe_addr;
	__u32 len, prog_id, fd_type;
	struct bpf_object *obj = NULL;
	__u32 duration = 0;
	char buf[256];

	err = FUNC2(file, BPF_PROG_TYPE_TRACEPOINT, &obj, &prog_fd);
	if (FUNC0(err, "bpf_prog_load", "err %d errno %d\n", err, errno))
		goto close_prog;

	FUNC9(buf, sizeof(buf),
		 "/sys/kernel/debug/tracing/events/%s/id", probe_name);
	efd = FUNC7(buf, O_RDONLY, 0);
	if (FUNC0(efd < 0, "open", "err %d errno %d\n", efd, errno))
		goto close_prog;
	bytes = FUNC8(efd, buf, sizeof(buf));
	FUNC4(efd);
	if (FUNC0(bytes <= 0 || bytes >= sizeof(buf), "read",
		  "bytes %d errno %d\n", bytes, errno))
		goto close_prog;

	attr.config = FUNC11(buf, NULL, 0);
	attr.type = PERF_TYPE_TRACEPOINT;
	attr.sample_type = PERF_SAMPLE_RAW;
	attr.sample_period = 1;
	attr.wakeup_events = 1;
	pmu_fd = FUNC12(__NR_perf_event_open, &attr, -1 /* pid */,
			 0 /* cpu 0 */, -1 /* group id */,
			 0 /* flags */);
	if (FUNC0(err, "perf_event_open", "err %d errno %d\n", err, errno))
		goto close_pmu;

	err = FUNC6(pmu_fd, PERF_EVENT_IOC_ENABLE, 0);
	if (FUNC0(err, "perf_event_ioc_enable", "err %d errno %d\n", err,
		  errno))
		goto close_pmu;

	err = FUNC6(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
	if (FUNC0(err, "perf_event_ioc_set_bpf", "err %d errno %d\n", err,
		  errno))
		goto close_pmu;

	/* query (getpid(), pmu_fd) */
	len = sizeof(buf);
	err = FUNC3(FUNC5(), pmu_fd, 0, buf, &len, &prog_id,
				&fd_type, &probe_offset, &probe_addr);
	if (FUNC0(err < 0, "bpf_task_fd_query", "err %d errno %d\n", err,
		  errno))
		goto close_pmu;

	err = (fd_type == BPF_FD_TYPE_TRACEPOINT) && !FUNC10(buf, tp_name);
	if (FUNC0(!err, "check_results", "fd_type %d tp_name %s\n",
		  fd_type, buf))
		goto close_pmu;

close_pmu:
	FUNC4(pmu_fd);
close_prog:
	FUNC1(obj);
}