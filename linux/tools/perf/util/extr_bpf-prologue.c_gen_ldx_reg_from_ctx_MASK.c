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
struct bpf_insn_pos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_DW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct bpf_insn_pos*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bpf_insn_pos*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(struct bpf_insn_pos *pos, int ctx_reg,
		     const char *reg, int target_reg)
{
	int offset = FUNC4(reg);

	if (offset < 0) {
		FUNC3("bpf: prologue: failed to get register %s\n",
		       reg);
		return offset;
	}
	FUNC2(FUNC0(BPF_DW, target_reg, ctx_reg, offset), pos);

	return FUNC1(pos);
}