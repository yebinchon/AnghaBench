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
typedef  size_t u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {struct bpf_map* map_ptr; } ;
struct bpf_map {int /*<<< orphan*/  value_size; } ;
typedef  enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;

/* Variables and functions */
 size_t BPF_MAP_CAN_READ ; 
 size_t BPF_MAP_CAN_WRITE ; 
 int BPF_READ ; 
 int BPF_WRITE ; 
 int EACCES ; 
 size_t FUNC0 (struct bpf_map*) ; 
 struct bpf_reg_state* FUNC1 (struct bpf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_verifier_env*,char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct bpf_verifier_env *env, u32 regno,
				 int off, int size, enum bpf_access_type type)
{
	struct bpf_reg_state *regs = FUNC1(env);
	struct bpf_map *map = regs[regno].map_ptr;
	u32 cap = FUNC0(map);

	if (type == BPF_WRITE && !(cap & BPF_MAP_CAN_WRITE)) {
		FUNC2(env, "write into map forbidden, value_size=%d off=%d size=%d\n",
			map->value_size, off, size);
		return -EACCES;
	}

	if (type == BPF_READ && !(cap & BPF_MAP_CAN_READ)) {
		FUNC2(env, "read from map forbidden, value_size=%d off=%d size=%d\n",
			map->value_size, off, size);
		return -EACCES;
	}

	return 0;
}