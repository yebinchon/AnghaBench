#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bpf_verifier_env {scalar_t__ subprog_cnt; TYPE_2__* subprog_info; TYPE_1__* prog; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int len; } ;

/* Variables and functions */
 scalar_t__ BPF_MAX_SUBPROGS ; 
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  cmp_subprogs ; 
 int FUNC0 (struct bpf_verifier_env*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_verifier_env*,char*) ; 

__attribute__((used)) static int FUNC3(struct bpf_verifier_env *env, int off)
{
	int insn_cnt = env->prog->len;
	int ret;

	if (off >= insn_cnt || off < 0) {
		FUNC2(env, "call to invalid destination\n");
		return -EINVAL;
	}
	ret = FUNC0(env, off);
	if (ret >= 0)
		return 0;
	if (env->subprog_cnt >= BPF_MAX_SUBPROGS) {
		FUNC2(env, "too many subprograms\n");
		return -E2BIG;
	}
	env->subprog_info[env->subprog_cnt++].start = off;
	FUNC1(env->subprog_info, env->subprog_cnt,
	     sizeof(env->subprog_info[0]), cmp_subprogs, NULL);
	return 0;
}