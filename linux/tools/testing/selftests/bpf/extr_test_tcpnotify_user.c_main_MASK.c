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
struct tcpnotify_globals {int ncalls; int /*<<< orphan*/  member_0; } ;
struct perf_buffer_opts {int /*<<< orphan*/  sample_cb; } ;
struct perf_buffer {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_SOCK_OPS ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCK_OPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 scalar_t__ FUNC2 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_buffer*) ; 
 int TESTPORT ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_map*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tcpnotify_globals*) ; 
 struct bpf_map* FUNC6 (struct bpf_object*,char*) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  dummyfn ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct perf_buffer*) ; 
 struct perf_buffer* FUNC15 (int /*<<< orphan*/ ,int,struct perf_buffer_opts*) ; 
 int /*<<< orphan*/  poller_thread ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int rx_callbacks ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  tid ; 
 scalar_t__ FUNC25 (struct tcpnotify_globals*) ; 

int FUNC26(int argc, char **argv)
{
	const char *file = "test_tcpnotify_kern.o";
	struct bpf_map *perf_map, *global_map;
	struct perf_buffer_opts pb_opts = {};
	struct tcpnotify_globals g = {0};
	struct perf_buffer *pb = NULL;
	const char *cg_path = "/foo";
	int prog_fd, rv, cg_fd = -1;
	int error = EXIT_FAILURE;
	struct bpf_object *obj;
	char test_script[80];
	cpu_set_t cpuset;
	__u32 key = 0;

	FUNC1(&cpuset);
	FUNC0(0, &cpuset);
	FUNC19(FUNC18(), sizeof(cpu_set_t), &cpuset);

	if (FUNC20())
		goto err;

	cg_fd = FUNC12(cg_path);
	if (cg_fd < 0)
		goto err;

	if (FUNC13(cg_path))
		goto err;

	if (FUNC9(file, BPF_PROG_TYPE_SOCK_OPS, &obj, &prog_fd)) {
		FUNC16("FAILED: load_bpf_file failed for: %s\n", file);
		goto err;
	}

	rv = FUNC7(prog_fd, cg_fd, BPF_CGROUP_SOCK_OPS, 0);
	if (rv) {
		FUNC16("FAILED: bpf_prog_attach: %d (%s)\n",
		       error, FUNC23(errno));
		goto err;
	}

	perf_map = FUNC6(obj, "perf_event_map");
	if (!perf_map) {
		FUNC16("FAIL:map '%s' not found\n", "perf_event_map");
		goto err;
	}

	global_map = FUNC6(obj, "global_map");
	if (!global_map) {
		FUNC16("FAIL:map '%s' not found\n", "global_map");
		return -1;
	}

	pb_opts.sample_cb = dummyfn;
	pb = FUNC15(FUNC4(perf_map), 8, &pb_opts);
	if (FUNC2(pb))
		goto err;

	FUNC17(&tid, NULL, poller_thread, pb);

	FUNC22(test_script,
		"iptables -A INPUT -p tcp --dport %d -j DROP",
		TESTPORT);
	FUNC24(test_script);

	FUNC22(test_script,
		"nc 127.0.0.1 %d < /etc/passwd > /dev/null 2>&1 ",
		TESTPORT);
	FUNC24(test_script);

	FUNC22(test_script,
		"iptables -D INPUT -p tcp --dport %d -j DROP",
		TESTPORT);
	FUNC24(test_script);

	rv = FUNC5(FUNC4(global_map), &key, &g);
	if (rv != 0) {
		FUNC16("FAILED: bpf_map_lookup_elem returns %d\n", rv);
		goto err;
	}

	FUNC21(10);

	if (FUNC25(&g)) {
		FUNC16("FAILED: Wrong stats Expected %d calls, got %d\n",
			g.ncalls, rx_callbacks);
		goto err;
	}

	FUNC16("PASSED!\n");
	error = 0;
err:
	FUNC8(cg_fd, BPF_CGROUP_SOCK_OPS);
	FUNC11(cg_fd);
	FUNC10();
	if (!FUNC3(pb))
		FUNC14(pb);
	return error;
}