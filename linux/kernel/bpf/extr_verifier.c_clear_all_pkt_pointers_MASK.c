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
struct bpf_verifier_state {int curframe; int /*<<< orphan*/ * frame; } ;
struct bpf_verifier_env {struct bpf_verifier_state* cur_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_verifier_env*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bpf_verifier_env *env)
{
	struct bpf_verifier_state *vstate = env->cur_state;
	int i;

	for (i = 0; i <= vstate->curframe; i++)
		FUNC0(env, vstate->frame[i]);
}