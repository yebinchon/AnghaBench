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
struct perf_event_attr {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef  int pid_t ;
typedef  int __u64 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char const*,char*,...) ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 scalar_t__ SIGUSR1 ; 
 int /*<<< orphan*/  __NR_perf_event_open ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*) ; 
 int FUNC3 (struct bpf_object*,char*) ; 
 int FUNC4 (char const*,int,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 scalar_t__ sigusr1_received ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct perf_event_attr*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 

__attribute__((used)) static void FUNC17(struct perf_event_attr *attr,
				    int prog_type,
				    const char *test_name)
{
	int err = -1, pmu_fd, prog_fd, info_map_fd, status_map_fd;
	const char *file = "./test_send_signal_kern.o";
	struct bpf_object *obj = NULL;
	int pipe_c2p[2], pipe_p2c[2];
	__u32 key = 0, duration = 0;
	char buf[256];
	pid_t pid;
	__u64 val;

	if (FUNC0(FUNC9(pipe_c2p), test_name,
		  "pipe pipe_c2p error: %s\n", FUNC13(errno)))
		return;

	if (FUNC0(FUNC9(pipe_p2c), test_name,
		  "pipe pipe_p2c error: %s\n", FUNC13(errno))) {
		FUNC5(pipe_c2p[0]);
		FUNC5(pipe_c2p[1]);
		return;
	}

	pid = FUNC7();
	if (FUNC0(pid < 0, test_name, "fork error: %s\n", FUNC13(errno))) {
		FUNC5(pipe_c2p[0]);
		FUNC5(pipe_c2p[1]);
		FUNC5(pipe_p2c[0]);
		FUNC5(pipe_p2c[1]);
		return;
	}

	if (pid == 0) {
		/* install signal handler and notify parent */
		FUNC11(SIGUSR1, sigusr1_handler);

		FUNC5(pipe_c2p[0]); /* close read */
		FUNC5(pipe_p2c[1]); /* close write */

		/* notify parent signal handler is installed */
		FUNC16(pipe_c2p[1], buf, 1);

		/* make sure parent enabled bpf program to send_signal */
		FUNC10(pipe_p2c[0], buf, 1);

		/* wait a little for signal handler */
		FUNC12(1);

		if (sigusr1_received)
			FUNC16(pipe_c2p[1], "2", 1);
		else
			FUNC16(pipe_c2p[1], "0", 1);

		/* wait for parent notification and exit */
		FUNC10(pipe_p2c[0], buf, 1);

		FUNC5(pipe_c2p[1]);
		FUNC5(pipe_p2c[0]);
		FUNC6(0);
	}

	FUNC5(pipe_c2p[1]); /* close write */
	FUNC5(pipe_p2c[0]); /* close read */

	err = FUNC4(file, prog_type, &obj, &prog_fd);
	if (FUNC0(err < 0, test_name, "bpf_prog_load error: %s\n",
		  FUNC13(errno)))
		goto prog_load_failure;

	pmu_fd = FUNC14(__NR_perf_event_open, attr, pid, -1,
			 -1 /* group id */, 0 /* flags */);
	if (FUNC0(pmu_fd < 0, test_name, "perf_event_open error: %s\n",
		  FUNC13(errno))) {
		err = -1;
		goto close_prog;
	}

	err = FUNC8(pmu_fd, PERF_EVENT_IOC_ENABLE, 0);
	if (FUNC0(err < 0, test_name, "ioctl perf_event_ioc_enable error: %s\n",
		  FUNC13(errno)))
		goto disable_pmu;

	err = FUNC8(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
	if (FUNC0(err < 0, test_name, "ioctl perf_event_ioc_set_bpf error: %s\n",
		  FUNC13(errno)))
		goto disable_pmu;

	err = -1;
	info_map_fd = FUNC3(obj, "info_map");
	if (FUNC0(info_map_fd < 0, test_name, "find map %s error\n", "info_map"))
		goto disable_pmu;

	status_map_fd = FUNC3(obj, "status_map");
	if (FUNC0(status_map_fd < 0, test_name, "find map %s error\n", "status_map"))
		goto disable_pmu;

	/* wait until child signal handler installed */
	FUNC10(pipe_c2p[0], buf, 1);

	/* trigger the bpf send_signal */
	key = 0;
	val = (((__u64)(SIGUSR1)) << 32) | pid;
	FUNC1(info_map_fd, &key, &val, 0);

	/* notify child that bpf program can send_signal now */
	FUNC16(pipe_p2c[1], buf, 1);

	/* wait for result */
	err = FUNC10(pipe_c2p[0], buf, 1);
	if (FUNC0(err < 0, test_name, "reading pipe error: %s\n", FUNC13(errno)))
		goto disable_pmu;
	if (FUNC0(err == 0, test_name, "reading pipe error: size 0\n")) {
		err = -1;
		goto disable_pmu;
	}

	FUNC0(buf[0] != '2', test_name, "incorrect result\n");

	/* notify child safe to exit */
	FUNC16(pipe_p2c[1], buf, 1);

disable_pmu:
	FUNC5(pmu_fd);
close_prog:
	FUNC2(obj);
prog_load_failure:
	FUNC5(pipe_c2p[0]);
	FUNC5(pipe_p2c[1]);
	FUNC15(NULL);
}