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
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_insn*) ; 
 int BPF_CALL ; 
 struct bpf_insn FUNC1 () ; 
 int /*<<< orphan*/  BPF_FUNC_tail_call ; 
 int BPF_JMP ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 int FUNC5 (int,struct bpf_insn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(enum bpf_prog_type prog_type, int mfd, int idx)
{
	struct bpf_insn prog[] = {
		FUNC3(BPF_REG_3, idx),
		FUNC2(BPF_REG_2, mfd),
		FUNC4(BPF_JMP | BPF_CALL, 0, 0, 0,
			     BPF_FUNC_tail_call),
		FUNC3(BPF_REG_0, 41),
		FUNC1(),
	};

	return FUNC5(prog_type, prog,
				FUNC0(prog), "GPL", 0, NULL, 0);
}