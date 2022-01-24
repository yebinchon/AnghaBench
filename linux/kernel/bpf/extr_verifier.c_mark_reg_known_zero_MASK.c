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
typedef  scalar_t__ u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_BPF_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct bpf_verifier_env *env,
				struct bpf_reg_state *regs, u32 regno)
{
	if (FUNC0(regno >= MAX_BPF_REG)) {
		FUNC3(env, "mark_reg_known_zero(regs, %u)\n", regno);
		/* Something bad happened, let's kill all regs */
		for (regno = 0; regno < MAX_BPF_REG; regno++)
			FUNC2(regs + regno);
		return;
	}
	FUNC1(regs + regno);
}