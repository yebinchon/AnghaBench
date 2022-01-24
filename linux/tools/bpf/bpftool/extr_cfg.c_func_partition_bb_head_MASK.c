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
typedef  scalar_t__ u8 ;
struct func_node {int /*<<< orphan*/  bbs; struct bpf_insn* end; struct bpf_insn* start; } ;
struct bpf_insn {int off; int /*<<< orphan*/  code; } ;
struct bb_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ BPF_CALL ; 
 scalar_t__ BPF_EXIT ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bb_node* FUNC2 (struct func_node*,struct bpf_insn*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct func_node *func)
{
	struct bpf_insn *cur, *end;
	struct bb_node *bb;

	cur = func->start;
	end = func->end;
	FUNC1(&func->bbs);
	bb = FUNC2(func, cur);
	if (!bb)
		return true;

	for (; cur <= end; cur++) {
		if (FUNC3(cur->code)) {
			u8 opcode = FUNC0(cur->code);

			if (opcode == BPF_EXIT || opcode == BPF_CALL)
				continue;

			bb = FUNC2(func, cur + cur->off + 1);
			if (!bb)
				return true;

			if (opcode != BPF_JA) {
				bb = FUNC2(func, cur + 1);
				if (!bb)
					return true;
			}
		}
	}

	return false;
}