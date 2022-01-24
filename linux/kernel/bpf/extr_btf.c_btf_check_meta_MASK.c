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
struct btf_verifier_env {int /*<<< orphan*/  log_type_id; int /*<<< orphan*/  btf; } ;
struct btf_type {int info; int name_off; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ (* check_meta ) (struct btf_verifier_env*,struct btf_type const*,int) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BTF_INFO_MASK ; 
 int BTF_KIND_MAX ; 
 int BTF_KIND_UNKN ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_verifier_env*,char*,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC4 (struct btf_verifier_env*,struct btf_type const*,int) ; 

__attribute__((used)) static s32 FUNC5(struct btf_verifier_env *env,
			  const struct btf_type *t,
			  u32 meta_left)
{
	u32 saved_meta_left = meta_left;
	s32 var_meta_size;

	if (meta_left < sizeof(*t)) {
		FUNC3(env, "[%u] meta_left:%u meta_needed:%zu",
				 env->log_type_id, meta_left, sizeof(*t));
		return -EINVAL;
	}
	meta_left -= sizeof(*t);

	if (t->info & ~BTF_INFO_MASK) {
		FUNC3(env, "[%u] Invalid btf_info:%x",
				 env->log_type_id, t->info);
		return -EINVAL;
	}

	if (FUNC0(t->info) > BTF_KIND_MAX ||
	    FUNC0(t->info) == BTF_KIND_UNKN) {
		FUNC3(env, "[%u] Invalid kind:%u",
				 env->log_type_id, FUNC0(t->info));
		return -EINVAL;
	}

	if (!FUNC1(env->btf, t->name_off)) {
		FUNC3(env, "[%u] Invalid name_offset:%u",
				 env->log_type_id, t->name_off);
		return -EINVAL;
	}

	var_meta_size = FUNC2(t)->check_meta(env, t, meta_left);
	if (var_meta_size < 0)
		return var_meta_size;

	meta_left -= var_meta_size;

	return saved_meta_left - meta_left;
}