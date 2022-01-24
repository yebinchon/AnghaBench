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
struct perf_buffer_opts {int /*<<< orphan*/ * ctx; int /*<<< orphan*/  sample_cb; } ;
struct perf_buffer {int dummy; } ;
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  struct perf_buffer bpf_link ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  cpu_set ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_KPROBE ; 
 scalar_t__ FUNC0 (int,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_buffer*) ; 
 int /*<<< orphan*/  SYS_NANOSLEEP_KPROBE_NAME ; 
 int /*<<< orphan*/  FUNC6 (struct perf_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_object*) ; 
 struct bpf_map* FUNC9 (struct bpf_object*,char*) ; 
 struct bpf_program* FUNC10 (struct bpf_object*,char const*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 struct perf_buffer* FUNC12 (struct bpf_program*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  on_sample ; 
 int /*<<< orphan*/  FUNC14 (struct perf_buffer*) ; 
 struct perf_buffer* FUNC15 (int /*<<< orphan*/ ,int,struct perf_buffer_opts*) ; 
 int FUNC16 (struct perf_buffer*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

void FUNC20(void)
{
	int err, prog_fd, nr_cpus, i, duration = 0;
	const char *prog_name = "kprobe/sys_nanosleep";
	const char *file = "./test_perf_buffer.o";
	struct perf_buffer_opts pb_opts = {};
	struct bpf_map *perf_buf_map;
	cpu_set_t cpu_set, cpu_seen;
	struct bpf_program *prog;
	struct bpf_object *obj;
	struct perf_buffer *pb;
	struct bpf_link *link;

	nr_cpus = FUNC13();
	if (FUNC0(nr_cpus < 0, "nr_cpus", "err %d\n", nr_cpus))
		return;

	/* load program */
	err = FUNC11(file, BPF_PROG_TYPE_KPROBE, &obj, &prog_fd);
	if (FUNC0(err, "obj_load", "err %d errno %d\n", err, errno))
		return;

	prog = FUNC10(obj, prog_name);
	if (FUNC0(!prog, "find_probe", "prog '%s' not found\n", prog_name))
		goto out_close;

	/* load map */
	perf_buf_map = FUNC9(obj, "perf_buf_map");
	if (FUNC0(!perf_buf_map, "find_perf_buf_map", "not found\n"))
		goto out_close;

	/* attach kprobe */
	link = FUNC12(prog, false /* retprobe */,
					  SYS_NANOSLEEP_KPROBE_NAME);
	if (FUNC0(FUNC4(link), "attach_kprobe", "err %ld\n", FUNC5(link)))
		goto out_close;

	/* set up perf buffer */
	pb_opts.sample_cb = on_sample;
	pb_opts.ctx = &cpu_seen;
	pb = FUNC15(FUNC7(perf_buf_map), 1, &pb_opts);
	if (FUNC0(FUNC4(pb), "perf_buf__new", "err %ld\n", FUNC5(pb)))
		goto out_detach;

	/* trigger kprobe on every CPU */
	FUNC3(&cpu_seen);
	for (i = 0; i < nr_cpus; i++) {
		FUNC3(&cpu_set);
		FUNC2(i, &cpu_set);

		err = FUNC18(FUNC17(), sizeof(cpu_set),
					     &cpu_set);
		if (err && FUNC0(err, "set_affinity", "cpu #%d, err %d\n",
				 i, err))
			goto out_detach;

		FUNC19(1);
	}

	/* read perf buffer */
	err = FUNC16(pb, 100);
	if (FUNC0(err < 0, "perf_buffer__poll", "err %d\n", err))
		goto out_free_pb;

	if (FUNC0(FUNC1(&cpu_seen) != nr_cpus, "seen_cpu_cnt",
		  "expect %d, seen %d\n", nr_cpus, FUNC1(&cpu_seen)))
		goto out_free_pb;

out_free_pb:
	FUNC14(pb);
out_detach:
	FUNC6(link);
out_close:
	FUNC8(obj);
}