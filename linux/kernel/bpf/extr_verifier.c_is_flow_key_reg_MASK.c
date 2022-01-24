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
struct bpf_reg_state {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PTR_TO_FLOW_KEYS ; 
 struct bpf_reg_state* FUNC0 (struct bpf_verifier_env*,int) ; 

__attribute__((used)) static bool FUNC1(struct bpf_verifier_env *env, int regno)
{
	const struct bpf_reg_state *reg = FUNC0(env, regno);

	/* Separate to is_ctx_reg() since we still want to allow BPF_ST here. */
	return reg->type == PTR_TO_FLOW_KEYS;
}