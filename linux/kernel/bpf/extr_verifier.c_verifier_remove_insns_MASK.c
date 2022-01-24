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
typedef  int u32 ;
struct bpf_verifier_env {TYPE_1__* prog; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_insn_aux_data {int dummy; } ;
struct TYPE_2__ {unsigned int len; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_verifier_env*,int,int) ; 
 int FUNC1 (struct bpf_verifier_env*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,int,int) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_insn_aux_data*,struct bpf_insn_aux_data*,int) ; 

__attribute__((used)) static int FUNC6(struct bpf_verifier_env *env, u32 off, u32 cnt)
{
	struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
	unsigned int orig_prog_len = env->prog->len;
	int err;

	if (FUNC2(env->prog->aux))
		FUNC3(env, off, cnt);

	err = FUNC4(env->prog, off, cnt);
	if (err)
		return err;

	err = FUNC0(env, off, cnt);
	if (err)
		return err;

	err = FUNC1(env, off, cnt);
	if (err)
		return err;

	FUNC5(aux_data + off,	aux_data + off + cnt,
		sizeof(*aux_data) * (orig_prog_len - off - cnt));

	return 0;
}