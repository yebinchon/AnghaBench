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
struct timespec {int member_1; int /*<<< orphan*/  member_0; } ;
struct perf_buffer_opts {int /*<<< orphan*/  sample_cb; } ;
struct perf_buffer {int dummy; } ;
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  struct perf_buffer bpf_link ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  cpu_set ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_RAW_TRACEPOINT ; 
 scalar_t__ FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_buffer*) ; 
 int MAX_CNT_RAWTP ; 
 int FUNC5 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_object*) ; 
 struct bpf_map* FUNC9 (struct bpf_object*,char*) ; 
 struct bpf_program* FUNC10 (struct bpf_object*,char const*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 struct perf_buffer* FUNC12 (struct bpf_program*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  get_stack_print_output ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct perf_buffer*) ; 
 struct perf_buffer* FUNC16 (int /*<<< orphan*/ ,int,struct perf_buffer_opts*) ; 
 int FUNC17 (struct perf_buffer*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC20(void)
{
	const char *file = "./test_get_stack_rawtp.o";
	const char *prog_name = "raw_tracepoint/sys_enter";
	int i, err, prog_fd, exp_cnt = MAX_CNT_RAWTP;
	struct perf_buffer_opts pb_opts = {};
	struct perf_buffer *pb = NULL;
	struct bpf_link *link = NULL;
	struct timespec tv = {0, 10};
	struct bpf_program *prog;
	struct bpf_object *obj;
	struct bpf_map *map;
	cpu_set_t cpu_set;

	err = FUNC11(file, BPF_PROG_TYPE_RAW_TRACEPOINT, &obj, &prog_fd);
	if (FUNC0(err, "prog_load raw tp", "err %d errno %d\n", err, errno))
		return;

	prog = FUNC10(obj, prog_name);
	if (FUNC0(!prog, "find_probe", "prog '%s' not found\n", prog_name))
		goto close_prog;

	map = FUNC9(obj, "perfmap");
	if (FUNC0(!map, "bpf_find_map", "not found\n"))
		goto close_prog;

	err = FUNC13();
	if (FUNC0(err < 0, "load_kallsyms", "err %d errno %d\n", err, errno))
		goto close_prog;

	FUNC2(&cpu_set);
	FUNC1(0, &cpu_set);
	err = FUNC19(FUNC18(), sizeof(cpu_set), &cpu_set);
	if (FUNC0(err, "set_affinity", "err %d, errno %d\n", err, errno))
		goto close_prog;

	link = FUNC12(prog, "sys_enter");
	if (FUNC0(FUNC3(link), "attach_raw_tp", "err %ld\n", FUNC5(link)))
		goto close_prog;

	pb_opts.sample_cb = get_stack_print_output;
	pb = FUNC16(FUNC7(map), 8, &pb_opts);
	if (FUNC0(FUNC3(pb), "perf_buf__new", "err %ld\n", FUNC5(pb)))
		goto close_prog;

	/* trigger some syscall action */
	for (i = 0; i < MAX_CNT_RAWTP; i++)
		FUNC14(&tv, NULL);

	while (exp_cnt > 0) {
		err = FUNC17(pb, 100);
		if (err < 0 && FUNC0(err < 0, "pb__poll", "err %d\n", err))
			goto close_prog;
		exp_cnt -= err;
	}

close_prog:
	if (!FUNC4(link))
		FUNC6(link);
	if (!FUNC4(pb))
		FUNC15(pb);
	FUNC8(obj);
}