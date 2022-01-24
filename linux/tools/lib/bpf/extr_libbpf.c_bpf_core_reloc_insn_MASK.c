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
struct bpf_program {struct bpf_insn* insns; } ;
struct bpf_insn {scalar_t__ imm; int /*<<< orphan*/  off; int /*<<< orphan*/  dst_reg; int /*<<< orphan*/  src_reg; int /*<<< orphan*/  code; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ BPF_ALU ; 
 scalar_t__ BPF_ALU64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_K ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_program*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct bpf_program *prog, int insn_off,
			       __u32 orig_off, __u32 new_off)
{
	struct bpf_insn *insn;
	int insn_idx;
	__u8 class;

	if (insn_off % sizeof(struct bpf_insn))
		return -EINVAL;
	insn_idx = insn_off / sizeof(struct bpf_insn);

	insn = &prog->insns[insn_idx];
	class = FUNC0(insn->code);

	if (class == BPF_ALU || class == BPF_ALU64) {
		if (FUNC1(insn->code) != BPF_K)
			return -EINVAL;
		if (insn->imm != orig_off)
			return -EINVAL;
		insn->imm = new_off;
		FUNC3("prog '%s': patched insn #%d (ALU/ALU64) imm %d -> %d\n",
			 FUNC2(prog, false),
			 insn_idx, orig_off, new_off);
	} else {
		FUNC4("prog '%s': trying to relocate unrecognized insn #%d, code:%x, src:%x, dst:%x, off:%x, imm:%x\n",
			   FUNC2(prog, false),
			   insn_idx, insn->code, insn->src_reg, insn->dst_reg,
			   insn->off, insn->imm);
		return -EINVAL;
	}
	return 0;
}