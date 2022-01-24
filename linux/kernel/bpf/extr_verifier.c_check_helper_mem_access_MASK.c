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
struct bpf_reg_state {int type; int /*<<< orphan*/  off; } ;
struct bpf_call_arg_meta {int /*<<< orphan*/  raw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_READ ; 
 int /*<<< orphan*/  BPF_WRITE ; 
 int EACCES ; 
#define  PTR_TO_MAP_VALUE 130 
#define  PTR_TO_PACKET 129 
#define  PTR_TO_PACKET_META 128 
 int FUNC0 (struct bpf_verifier_env*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_verifier_env*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bpf_verifier_env*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct bpf_verifier_env*,int,int,int,struct bpf_call_arg_meta*) ; 
 struct bpf_reg_state* FUNC4 (struct bpf_verifier_env*) ; 

__attribute__((used)) static int FUNC5(struct bpf_verifier_env *env, int regno,
				   int access_size, bool zero_size_allowed,
				   struct bpf_call_arg_meta *meta)
{
	struct bpf_reg_state *regs = FUNC4(env), *reg = &regs[regno];

	switch (reg->type) {
	case PTR_TO_PACKET:
	case PTR_TO_PACKET_META:
		return FUNC2(env, regno, reg->off, access_size,
					   zero_size_allowed);
	case PTR_TO_MAP_VALUE:
		if (FUNC1(env, regno, reg->off, access_size,
					  meta && meta->raw_mode ? BPF_WRITE :
					  BPF_READ))
			return -EACCES;
		return FUNC0(env, regno, reg->off, access_size,
					zero_size_allowed);
	default: /* scalar_value|ptr_to_stack or invalid ptr */
		return FUNC3(env, regno, access_size,
					    zero_size_allowed, meta);
	}
}