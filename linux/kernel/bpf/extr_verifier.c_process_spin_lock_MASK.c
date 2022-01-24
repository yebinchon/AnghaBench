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
typedef  int /*<<< orphan*/  u64 ;
struct bpf_verifier_state {scalar_t__ active_spin_lock; } ;
struct bpf_verifier_env {struct bpf_verifier_state* cur_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ id; int /*<<< orphan*/  off; TYPE_1__ var_off; struct bpf_map* map_ptr; } ;
struct bpf_map {int /*<<< orphan*/  spin_lock_off; int /*<<< orphan*/  name; int /*<<< orphan*/  btf; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ PTR_TO_MAP_VALUE ; 
 struct bpf_reg_state* FUNC0 (struct bpf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map*) ; 
 int FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct bpf_verifier_env *env, int regno,
			     bool is_lock)
{
	struct bpf_reg_state *regs = FUNC0(env), *reg = &regs[regno];
	struct bpf_verifier_state *cur = env->cur_state;
	bool is_const = FUNC2(reg->var_off);
	struct bpf_map *map = reg->map_ptr;
	u64 val = reg->var_off.value;

	if (reg->type != PTR_TO_MAP_VALUE) {
		FUNC3(env, "R%d is not a pointer to map_value\n", regno);
		return -EINVAL;
	}
	if (!is_const) {
		FUNC3(env,
			"R%d doesn't have constant offset. bpf_spin_lock has to be at the constant offset\n",
			regno);
		return -EINVAL;
	}
	if (!map->btf) {
		FUNC3(env,
			"map '%s' has to have BTF in order to use bpf_spin_lock\n",
			map->name);
		return -EINVAL;
	}
	if (!FUNC1(map)) {
		if (map->spin_lock_off == -E2BIG)
			FUNC3(env,
				"map '%s' has more than one 'struct bpf_spin_lock'\n",
				map->name);
		else if (map->spin_lock_off == -ENOENT)
			FUNC3(env,
				"map '%s' doesn't have 'struct bpf_spin_lock'\n",
				map->name);
		else
			FUNC3(env,
				"map '%s' is not a struct type or bpf_spin_lock is mangled\n",
				map->name);
		return -EINVAL;
	}
	if (map->spin_lock_off != val + reg->off) {
		FUNC3(env, "off %lld doesn't point to 'struct bpf_spin_lock'\n",
			val + reg->off);
		return -EINVAL;
	}
	if (is_lock) {
		if (cur->active_spin_lock) {
			FUNC3(env,
				"Locking two bpf_spin_locks are not allowed\n");
			return -EINVAL;
		}
		cur->active_spin_lock = reg->id;
	} else {
		if (!cur->active_spin_lock) {
			FUNC3(env, "bpf_spin_unlock without taking a lock\n");
			return -EINVAL;
		}
		if (cur->active_spin_lock != reg->id) {
			FUNC3(env, "bpf_spin_unlock of different lock\n");
			return -EINVAL;
		}
		cur->active_spin_lock = 0;
	}
	return 0;
}