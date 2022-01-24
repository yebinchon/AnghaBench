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
struct bpf_verifier_env {int dummy; } ;
struct bpf_insn_aux_data {int dummy; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ALU_NON_POINTER ; 
 scalar_t__ FUNC0 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 struct bpf_insn_aux_data* FUNC1 (struct bpf_verifier_env*) ; 
 int FUNC2 (struct bpf_insn_aux_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bpf_verifier_env *env,
			    struct bpf_insn *insn)
{
	struct bpf_insn_aux_data *aux = FUNC1(env);

	if (FUNC0(env, insn))
		return 0;

	return FUNC2(aux, BPF_ALU_NON_POINTER, 0);
}