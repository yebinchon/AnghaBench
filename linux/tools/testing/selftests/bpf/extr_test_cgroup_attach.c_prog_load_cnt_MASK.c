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
struct bpf_insn {int dummy; } ;
struct bpf_cgroup_storage_key {int dummy; } ;
typedef  int /*<<< orphan*/  prog ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ADD ; 
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BPF_CALL ; 
 int BPF_DW ; 
 struct bpf_insn FUNC1 () ; 
 int /*<<< orphan*/  BPF_FUNC_get_local_storage ; 
 int /*<<< orphan*/  BPF_FUNC_map_lookup_elem ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 int BPF_JMP ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_CGROUP_STORAGE ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 struct bpf_insn FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_10 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 int BPF_STX ; 
 struct bpf_insn FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BPF_W ; 
 int BPF_XADD ; 
 void* FUNC10 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct bpf_insn*,size_t,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ map_fd ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(int verdict, int val)
{
	int cgroup_storage_fd, percpu_cgroup_storage_fd;

	if (map_fd < 0)
		map_fd = FUNC10(BPF_MAP_TYPE_ARRAY, 4, 8, 1, 0);
	if (map_fd < 0) {
		FUNC14("failed to create map '%s'\n", FUNC15(errno));
		return -1;
	}

	cgroup_storage_fd = FUNC10(BPF_MAP_TYPE_CGROUP_STORAGE,
				sizeof(struct bpf_cgroup_storage_key), 8, 0, 0);
	if (cgroup_storage_fd < 0) {
		FUNC14("failed to create map '%s'\n", FUNC15(errno));
		return -1;
	}

	percpu_cgroup_storage_fd = FUNC10(
		BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE,
		sizeof(struct bpf_cgroup_storage_key), 8, 0, 0);
	if (percpu_cgroup_storage_fd < 0) {
		FUNC14("failed to create map '%s'\n", FUNC15(errno));
		return -1;
	}

	struct bpf_insn prog[] = {
		FUNC5(BPF_REG_0, 0),
		FUNC9(BPF_W, BPF_REG_10, BPF_REG_0, -4), /* *(u32 *)(fp - 4) = r0 */
		FUNC7(BPF_REG_2, BPF_REG_10),
		FUNC0(BPF_ADD, BPF_REG_2, -4), /* r2 = fp - 4 */
		FUNC4(BPF_REG_1, map_fd),
		FUNC8(BPF_JMP | BPF_CALL, 0, 0, 0, BPF_FUNC_map_lookup_elem),
		FUNC2(BPF_JEQ, BPF_REG_0, 0, 2),
		FUNC6(BPF_REG_1, val), /* r1 = 1 */
		FUNC8(BPF_STX | BPF_XADD | BPF_DW, BPF_REG_0, BPF_REG_1, 0, 0), /* xadd r0 += r1 */

		FUNC4(BPF_REG_1, cgroup_storage_fd),
		FUNC6(BPF_REG_2, 0),
		FUNC8(BPF_JMP | BPF_CALL, 0, 0, 0, BPF_FUNC_get_local_storage),
		FUNC6(BPF_REG_1, val),
		FUNC8(BPF_STX | BPF_XADD | BPF_W, BPF_REG_0, BPF_REG_1, 0, 0),

		FUNC4(BPF_REG_1, percpu_cgroup_storage_fd),
		FUNC6(BPF_REG_2, 0),
		FUNC8(BPF_JMP | BPF_CALL, 0, 0, 0, BPF_FUNC_get_local_storage),
		FUNC3(BPF_W, BPF_REG_3, BPF_REG_0, 0),
		FUNC0(BPF_ADD, BPF_REG_3, 0x1),
		FUNC9(BPF_W, BPF_REG_0, BPF_REG_3, 0),

		FUNC6(BPF_REG_0, verdict), /* r0 = verdict */
		FUNC1(),
	};
	size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);
	int ret;

	ret = FUNC11(BPF_PROG_TYPE_CGROUP_SKB,
			       prog, insns_cnt, "GPL", 0,
			       bpf_log_buf, BPF_LOG_BUF_SIZE);

	if (ret < 0) {
		FUNC13("Loading program");
		FUNC14("Output from verifier:\n%s\n-------\n", bpf_log_buf);
		return 0;
	}
	FUNC12(cgroup_storage_fd);
	return ret;
}