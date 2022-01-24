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
typedef  int /*<<< orphan*/  value ;
struct bpf_insn {int imm; } ;
struct bpf_cgroup_storage_key {int dummy; } ;
typedef  int /*<<< orphan*/  prog ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ADD ; 
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_AND ; 
 int BPF_CALL ; 
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_DW ; 
 struct bpf_insn FUNC1 () ; 
 int /*<<< orphan*/  BPF_FUNC_get_local_storage ; 
 int BPF_JMP ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_CGROUP_STORAGE ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 struct bpf_insn FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 struct bpf_insn FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  TEST_CGROUP ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct bpf_insn*,size_t,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *,struct bpf_cgroup_storage_key*) ; 
 scalar_t__ FUNC13 (int,struct bpf_cgroup_storage_key*,unsigned long long*) ; 
 scalar_t__ FUNC14 (int,struct bpf_cgroup_storage_key*,unsigned long long*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC18 (unsigned long long*) ; 
 int FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 unsigned long long* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 scalar_t__ FUNC23 () ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (char*) ; 

int FUNC26(int argc, char **argv)
{
	struct bpf_insn prog[] = {
		FUNC3(BPF_REG_1, 0), /* percpu map fd */
		FUNC4(BPF_REG_2, 0), /* flags, not used */
		FUNC6(BPF_JMP | BPF_CALL, 0, 0, 0,
			     BPF_FUNC_get_local_storage),
		FUNC2(BPF_DW, BPF_REG_3, BPF_REG_0, 0),
		FUNC0(BPF_ADD, BPF_REG_3, 0x1),
		FUNC7(BPF_DW, BPF_REG_0, BPF_REG_3, 0),

		FUNC3(BPF_REG_1, 0), /* map fd */
		FUNC4(BPF_REG_2, 0), /* flags, not used */
		FUNC6(BPF_JMP | BPF_CALL, 0, 0, 0,
			     BPF_FUNC_get_local_storage),
		FUNC4(BPF_REG_1, 1),
		FUNC8(BPF_DW, BPF_REG_0, BPF_REG_1, 0),
		FUNC2(BPF_DW, BPF_REG_1, BPF_REG_0, 0),
		FUNC0(BPF_AND, BPF_REG_1, 0x1),
		FUNC5(BPF_REG_0, BPF_REG_1),
		FUNC1(),
	};
	size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);
	int error = EXIT_FAILURE;
	int map_fd, percpu_map_fd, prog_fd, cgroup_fd;
	struct bpf_cgroup_storage_key key;
	unsigned long long value;
	unsigned long long *percpu_value;
	int cpu, nproc;

	nproc = FUNC19();
	percpu_value = FUNC21(sizeof(*percpu_value) * nproc);
	if (!percpu_value) {
		FUNC22("Not enough memory for per-cpu area (%d cpus)\n", nproc);
		goto err;
	}

	map_fd = FUNC10(BPF_MAP_TYPE_CGROUP_STORAGE, sizeof(key),
				sizeof(value), 0, 0);
	if (map_fd < 0) {
		FUNC22("Failed to create map: %s\n", FUNC24(errno));
		goto out;
	}

	percpu_map_fd = FUNC10(BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE,
				       sizeof(key), sizeof(value), 0, 0);
	if (percpu_map_fd < 0) {
		FUNC22("Failed to create map: %s\n", FUNC24(errno));
		goto out;
	}

	prog[0].imm = percpu_map_fd;
	prog[7].imm = map_fd;
	prog_fd = FUNC11(BPF_PROG_TYPE_CGROUP_SKB,
				   prog, insns_cnt, "GPL", 0,
				   bpf_log_buf, BPF_LOG_BUF_SIZE);
	if (prog_fd < 0) {
		FUNC22("Failed to load bpf program: %s\n", bpf_log_buf);
		goto out;
	}

	if (FUNC23()) {
		FUNC22("Failed to setup cgroup environment\n");
		goto err;
	}

	/* Create a cgroup, get fd, and join it */
	cgroup_fd = FUNC17(TEST_CGROUP);
	if (cgroup_fd < 0) {
		FUNC22("Failed to create test cgroup\n");
		goto err;
	}

	if (FUNC20(TEST_CGROUP)) {
		FUNC22("Failed to join cgroup\n");
		goto err;
	}

	/* Attach the bpf program */
	if (FUNC15(prog_fd, cgroup_fd, BPF_CGROUP_INET_EGRESS, 0)) {
		FUNC22("Failed to attach bpf program\n");
		goto err;
	}

	if (FUNC12(map_fd, NULL, &key)) {
		FUNC22("Failed to get the first key in cgroup storage\n");
		goto err;
	}

	if (FUNC13(map_fd, &key, &value)) {
		FUNC22("Failed to lookup cgroup storage 0\n");
		goto err;
	}

	for (cpu = 0; cpu < nproc; cpu++)
		percpu_value[cpu] = 1000;

	if (FUNC14(percpu_map_fd, &key, percpu_value, 0)) {
		FUNC22("Failed to update the data in the cgroup storage\n");
		goto err;
	}

	/* Every second packet should be dropped */
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null") == 0);
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null"));
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null") == 0);

	/* Check the counter in the cgroup local storage */
	if (FUNC13(map_fd, &key, &value)) {
		FUNC22("Failed to lookup cgroup storage\n");
		goto err;
	}

	if (value != 3) {
		FUNC22("Unexpected data in the cgroup storage: %llu\n", value);
		goto err;
	}

	/* Bump the counter in the cgroup local storage */
	value++;
	if (FUNC14(map_fd, &key, &value, 0)) {
		FUNC22("Failed to update the data in the cgroup storage\n");
		goto err;
	}

	/* Every second packet should be dropped */
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null") == 0);
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null"));
	FUNC9(FUNC25("ping localhost -c 1 -W 1 -q > /dev/null") == 0);

	/* Check the final value of the counter in the cgroup local storage */
	if (FUNC13(map_fd, &key, &value)) {
		FUNC22("Failed to lookup the cgroup storage\n");
		goto err;
	}

	if (value != 7) {
		FUNC22("Unexpected data in the cgroup storage: %llu\n", value);
		goto err;
	}

	/* Check the final value of the counter in the percpu local storage */

	for (cpu = 0; cpu < nproc; cpu++)
		percpu_value[cpu] = 0;

	if (FUNC13(percpu_map_fd, &key, percpu_value)) {
		FUNC22("Failed to lookup the per-cpu cgroup storage\n");
		goto err;
	}

	value = 0;
	for (cpu = 0; cpu < nproc; cpu++)
		value += percpu_value[cpu];

	if (value != nproc * 1000 + 6) {
		FUNC22("Unexpected data in the per-cpu cgroup storage\n");
		goto err;
	}

	error = 0;
	FUNC22("test_cgroup_storage:PASS\n");

err:
	FUNC16();
	FUNC18(percpu_value);

out:
	return error;
}