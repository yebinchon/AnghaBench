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
struct bpf_test {int prog_len; int retval; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BPF_CALL ; 
 struct bpf_insn FUNC1 (int) ; 
 int /*<<< orphan*/  BPF_DW ; 
 struct bpf_insn FUNC2 () ; 
 int /*<<< orphan*/  BPF_FUNC_get_prandom_u32 ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 int BPF_JMP ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_MOV ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_10 ; 
 int /*<<< orphan*/  BPF_REG_6 ; 
 struct bpf_insn FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC_NEST ; 
 int MAX_JMP_SEQ ; 
 int MAX_TEST_INSNS ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct bpf_test *self)
{
	struct bpf_insn *insn = self->fill_insns;
	int i = 0, k = 0;

#define FUNC_NEST 7
	for (k = 0; k < FUNC_NEST; k++) {
		insn[i++] = FUNC1(1);
		insn[i++] = FUNC2();
	}
	insn[i++] = FUNC4(BPF_REG_6, BPF_REG_1);
	/* test to check that the long sequence of jumps is acceptable */
	k = 0;
	while (k++ < MAX_JMP_SEQ) {
		insn[i++] = FUNC5(BPF_JMP | BPF_CALL, 0, 0, 0,
					 BPF_FUNC_get_prandom_u32);
		insn[i++] = FUNC3(BPF_JEQ, BPF_REG_0, FUNC7(), 2);
		insn[i++] = FUNC4(BPF_REG_1, BPF_REG_10);
		insn[i++] = FUNC6(BPF_DW, BPF_REG_1, BPF_REG_6,
					-8 * (k % (64 - 4 * FUNC_NEST) + 1));
	}
	while (i < MAX_TEST_INSNS - MAX_JMP_SEQ * 4)
		insn[i++] = FUNC0(BPF_MOV, BPF_REG_0, 42);
	insn[i] = FUNC2();
	self->prog_len = i + 1;
	self->retval = 42;
}