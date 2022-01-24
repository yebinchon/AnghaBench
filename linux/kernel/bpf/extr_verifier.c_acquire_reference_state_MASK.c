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
struct bpf_verifier_env {int id_gen; } ;
struct bpf_func_state {int acquired_refs; TYPE_1__* refs; } ;
struct TYPE_2__ {int id; int insn_idx; } ;

/* Variables and functions */
 struct bpf_func_state* FUNC0 (struct bpf_verifier_env*) ; 
 int FUNC1 (struct bpf_func_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct bpf_verifier_env *env, int insn_idx)
{
	struct bpf_func_state *state = FUNC0(env);
	int new_ofs = state->acquired_refs;
	int id, err;

	err = FUNC1(state, state->acquired_refs + 1, true);
	if (err)
		return err;
	id = ++env->id_gen;
	state->refs[new_ofs].id = id;
	state->refs[new_ofs].insn_idx = insn_idx;

	return id;
}