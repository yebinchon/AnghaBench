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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct bpf_test {int retval; int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC2 () ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_RSH ; 
 int /*<<< orphan*/  BPF_XOR ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct bpf_test *self)
{
	struct bpf_insn *insn = self->fill_insns;
	uint64_t res = 0;
	int i = 0;

	insn[i++] = FUNC4(BPF_REG_0, 0);
	while (i < self->retval) {
		uint64_t val = FUNC6();
		struct bpf_insn tmp[2] = { FUNC3(BPF_REG_1, val) };

		res ^= val;
		insn[i++] = tmp[0];
		insn[i++] = tmp[1];
		insn[i++] = FUNC1(BPF_XOR, BPF_REG_0, BPF_REG_1);
	}
	insn[i++] = FUNC5(BPF_REG_1, BPF_REG_0);
	insn[i++] = FUNC0(BPF_RSH, BPF_REG_1, 32);
	insn[i++] = FUNC1(BPF_XOR, BPF_REG_0, BPF_REG_1);
	insn[i] = FUNC2();
	self->prog_len = i + 1;
	res ^= (res >> 32);
	self->retval = (uint32_t)res;
}