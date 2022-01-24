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
typedef  int u32 ;
struct bpf_verifier_state {int jmp_history_cnt; int curframe; struct bpf_func_state** frame; int /*<<< orphan*/  last_insn_idx; int /*<<< orphan*/  first_insn_idx; int /*<<< orphan*/  parent; int /*<<< orphan*/  branches; int /*<<< orphan*/  active_spin_lock; int /*<<< orphan*/  speculative; int /*<<< orphan*/  jmp_history; } ;
struct bpf_idx_pair {int dummy; } ;
struct bpf_func_state {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_USER ; 
 int FUNC0 (struct bpf_func_state*,struct bpf_func_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_func_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct bpf_func_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct bpf_verifier_state *dst_state,
			       const struct bpf_verifier_state *src)
{
	struct bpf_func_state *dst;
	u32 jmp_sz = sizeof(struct bpf_idx_pair) * src->jmp_history_cnt;
	int i, err;

	if (dst_state->jmp_history_cnt < src->jmp_history_cnt) {
		FUNC2(dst_state->jmp_history);
		dst_state->jmp_history = FUNC3(jmp_sz, GFP_USER);
		if (!dst_state->jmp_history)
			return -ENOMEM;
	}
	FUNC5(dst_state->jmp_history, src->jmp_history, jmp_sz);
	dst_state->jmp_history_cnt = src->jmp_history_cnt;

	/* if dst has more stack frames then src frame, free them */
	for (i = src->curframe + 1; i <= dst_state->curframe; i++) {
		FUNC1(dst_state->frame[i]);
		dst_state->frame[i] = NULL;
	}
	dst_state->speculative = src->speculative;
	dst_state->curframe = src->curframe;
	dst_state->active_spin_lock = src->active_spin_lock;
	dst_state->branches = src->branches;
	dst_state->parent = src->parent;
	dst_state->first_insn_idx = src->first_insn_idx;
	dst_state->last_insn_idx = src->last_insn_idx;
	for (i = 0; i <= src->curframe; i++) {
		dst = dst_state->frame[i];
		if (!dst) {
			dst = FUNC4(sizeof(*dst), GFP_KERNEL);
			if (!dst)
				return -ENOMEM;
			dst_state->frame[i] = dst;
		}
		err = FUNC0(dst, src->frame[i]);
		if (err)
			return err;
	}
	return 0;
}