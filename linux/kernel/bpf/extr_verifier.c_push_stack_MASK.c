#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bpf_verifier_state {int speculative; TYPE_1__* parent; } ;
struct bpf_verifier_stack_elem {int insn_idx; int prev_insn_idx; struct bpf_verifier_state st; struct bpf_verifier_stack_elem* next; } ;
struct bpf_verifier_env {scalar_t__ stack_size; struct bpf_verifier_state* cur_state; struct bpf_verifier_stack_elem* head; } ;
struct TYPE_2__ {int /*<<< orphan*/  branches; } ;

/* Variables and functions */
 scalar_t__ BPF_COMPLEXITY_LIMIT_JMP_SEQ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bpf_verifier_state*,struct bpf_verifier_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_verifier_state*,int) ; 
 struct bpf_verifier_stack_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_verifier_env*,char*,scalar_t__) ; 

__attribute__((used)) static struct bpf_verifier_state *FUNC5(struct bpf_verifier_env *env,
					     int insn_idx, int prev_insn_idx,
					     bool speculative)
{
	struct bpf_verifier_state *cur = env->cur_state;
	struct bpf_verifier_stack_elem *elem;
	int err;

	elem = FUNC2(sizeof(struct bpf_verifier_stack_elem), GFP_KERNEL);
	if (!elem)
		goto err;

	elem->insn_idx = insn_idx;
	elem->prev_insn_idx = prev_insn_idx;
	elem->next = env->head;
	env->head = elem;
	env->stack_size++;
	err = FUNC0(&elem->st, cur);
	if (err)
		goto err;
	elem->st.speculative |= speculative;
	if (env->stack_size > BPF_COMPLEXITY_LIMIT_JMP_SEQ) {
		FUNC4(env, "The sequence of %d jumps is too complex.\n",
			env->stack_size);
		goto err;
	}
	if (elem->st.parent) {
		++elem->st.parent->branches;
		/* WARN_ON(branches > 2) technically makes sense here,
		 * but
		 * 1. speculative states will bump 'branches' for non-branch
		 * instructions
		 * 2. is_state_visited() heuristics may decide not to create
		 * a new state for a sequence of branches and all such current
		 * and cloned states will be pointing to a single parent state
		 * which might have large 'branches' count.
		 */
	}
	return &elem->st;
err:
	FUNC1(env->cur_state, true);
	env->cur_state = NULL;
	/* pop all elements and return */
	while (!FUNC3(env, NULL, NULL));
	return NULL;
}