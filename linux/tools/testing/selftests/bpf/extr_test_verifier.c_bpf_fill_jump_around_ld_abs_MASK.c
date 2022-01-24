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
struct bpf_test {int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 struct bpf_insn FUNC0 () ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_6 ; 

__attribute__((used)) static void FUNC4(struct bpf_test *self)
{
	struct bpf_insn *insn = self->fill_insns;
	/* jump range is limited to 16 bit. every ld_abs is replaced by 6 insns,
	 * but on arches like arm, ppc etc, there will be one BPF_ZEXT inserted
	 * to extend the error value of the inlined ld_abs sequence which then
	 * contains 7 insns. so, set the dividend to 7 so the testcase could
	 * work on all arches.
	 */
	unsigned int len = (1 << 15) / 7;
	int i = 0;

	insn[i++] = FUNC3(BPF_REG_6, BPF_REG_1);
	insn[i++] = FUNC2(BPF_B, 0);
	insn[i] = FUNC1(BPF_JEQ, BPF_REG_0, 10, len - i - 2);
	i++;
	while (i < len - 1)
		insn[i++] = FUNC2(BPF_B, 1);
	insn[i] = FUNC0();
	self->prog_len = i + 1;
}