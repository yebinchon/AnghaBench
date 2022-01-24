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
typedef  size_t u32 ;
struct bpf_verifier_env {TYPE_1__* insn_aux_data; int /*<<< orphan*/  prog; } ;
struct bpf_prog {int dummy; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  orig_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 scalar_t__ FUNC2 (struct bpf_verifier_env*,struct bpf_prog*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,size_t,size_t) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ,size_t,struct bpf_insn const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_verifier_env*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bpf_prog *FUNC6(struct bpf_verifier_env *env, u32 off,
					    const struct bpf_insn *patch, u32 len)
{
	struct bpf_prog *new_prog;

	new_prog = FUNC4(env->prog, off, patch, len);
	if (FUNC0(new_prog)) {
		if (FUNC1(new_prog) == -ERANGE)
			FUNC5(env,
				"insn %d cannot be patched due to 16-bit range\n",
				env->insn_aux_data[off].orig_idx);
		return NULL;
	}
	if (FUNC2(env, new_prog, off, len))
		return NULL;
	FUNC3(env, off, len);
	return new_prog;
}