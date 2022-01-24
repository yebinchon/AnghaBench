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
struct bpf_load_program_attr {int key_size; int value_size; int max_entries; char* license; int /*<<< orphan*/  insns_cnt; struct bpf_insn* insns; int /*<<< orphan*/  prog_type; int /*<<< orphan*/  map_type; } ;
struct bpf_insn {int imm; } ;
struct bpf_create_map_attr {int key_size; int value_size; int max_entries; char* license; int /*<<< orphan*/  insns_cnt; struct bpf_insn* insns; int /*<<< orphan*/  prog_type; int /*<<< orphan*/  map_type; } ;
typedef  int /*<<< orphan*/  prog ;
typedef  int /*<<< orphan*/  map ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_insn*) ; 
 int /*<<< orphan*/  BPF_ADD ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_DW ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC3 () ; 
 int /*<<< orphan*/  BPF_FUNC_map_lookup_elem ; 
 int /*<<< orphan*/  BPF_JA ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC6 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct bpf_insn FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 struct bpf_insn FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_SCHED_CLS ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_10 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 int /*<<< orphan*/  BPF_REG_9 ; 
 struct bpf_insn FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct bpf_load_program_attr*) ; 
 int FUNC14 (struct bpf_load_program_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int*,void*) ; 
 int FUNC16 (int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct bpf_load_program_attr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(int fd, unsigned long long key,
					    void *value)
{
	struct bpf_load_program_attr prog;
	struct bpf_create_map_attr map;
	struct bpf_insn insns[] = {
		FUNC8(BPF_REG_9, 0, 0),
		FUNC7(BPF_REG_1, fd),
		FUNC6(BPF_REG_3, key),
		FUNC10(BPF_REG_2, BPF_REG_10),
		FUNC1(BPF_ADD, BPF_REG_2, -8),
		FUNC11(BPF_DW, BPF_REG_2, BPF_REG_3, 0),
		FUNC2(BPF_FUNC_map_lookup_elem),
		FUNC4(BPF_JEQ, BPF_REG_0, 0, 4),
		FUNC5(BPF_DW, BPF_REG_1, BPF_REG_0, 0),
		FUNC11(BPF_DW, BPF_REG_9, BPF_REG_1, 0),
		FUNC9(BPF_REG_0, 42),
		FUNC4(BPF_JA, 0, 0, 1),
		FUNC9(BPF_REG_0, 1),
		FUNC3(),
	};
	__u8 data[64] = {};
	int mfd, pfd, ret, zero = 0;
	__u32 retval = 0;

	FUNC18(&map, 0, sizeof(map));
	map.map_type = BPF_MAP_TYPE_ARRAY;
	map.key_size = sizeof(int);
	map.value_size = sizeof(unsigned long long);
	map.max_entries = 1;

	mfd = FUNC13(&map);
	if (mfd < 0)
		return -1;

	insns[0].imm = mfd;

	FUNC18(&prog, 0, sizeof(prog));
	prog.prog_type = BPF_PROG_TYPE_SCHED_CLS;
	prog.insns = insns;
	prog.insns_cnt = FUNC0(insns);
	prog.license = "GPL";

	pfd = FUNC14(&prog, NULL, 0);
	if (pfd < 0) {
		FUNC17(mfd);
		return -1;
	}

	ret = FUNC16(pfd, 1, data, sizeof(data),
				NULL, NULL, &retval, NULL);
	if (ret < 0 || retval != 42) {
		ret = -1;
	} else {
		FUNC12(!FUNC15(mfd, &zero, value));
		ret = 0;
	}
	FUNC17(pfd);
	FUNC17(mfd);
	return ret;
}