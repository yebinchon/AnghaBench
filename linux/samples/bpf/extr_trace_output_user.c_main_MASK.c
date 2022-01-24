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
struct perf_buffer_opts {int /*<<< orphan*/  sample_cb; } ;
struct perf_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MAX_CNT ; 
 int /*<<< orphan*/  SIGINT ; 
 char* bpf_log_buf ; 
 scalar_t__ cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct perf_buffer*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 struct perf_buffer* FUNC3 (int /*<<< orphan*/ ,int,struct perf_buffer_opts*) ; 
 int FUNC4 (struct perf_buffer*,int) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  print_bpf_output ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char **argv)
{
	struct perf_buffer_opts pb_opts = {};
	struct perf_buffer *pb;
	char filename[256];
	FILE *f;
	int ret;

	FUNC7(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC2(filename)) {
		FUNC6("%s", bpf_log_buf);
		return 1;
	}

	pb_opts.sample_cb = print_bpf_output;
	pb = FUNC3(map_fd[0], 8, &pb_opts);
	ret = FUNC1(pb);
	if (ret) {
		FUNC6("failed to setup perf_buffer: %d\n", ret);
		return 1;
	}

	f = FUNC5("taskset 1 dd if=/dev/zero of=/dev/null", "r");
	(void) f;

	start_time = FUNC8();
	while ((ret = FUNC4(pb, 1000)) >= 0 && cnt < MAX_CNT) {
	}
	FUNC0(0, SIGINT);
	return ret;
}