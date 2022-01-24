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
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ name_off; } ;
struct btf_param {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (struct btf_type const*) ; 
 int FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_verifier_env*,struct btf_type const*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_verifier_env*,struct btf_type const*,char*) ; 

__attribute__((used)) static s32 FUNC4(struct btf_verifier_env *env,
				     const struct btf_type *t,
				     u32 meta_left)
{
	u32 meta_needed = FUNC1(t) * sizeof(struct btf_param);

	if (meta_left < meta_needed) {
		FUNC2(env, t,
				       "meta_left:%u meta_needed:%u",
				       meta_left, meta_needed);
		return -EINVAL;
	}

	if (t->name_off) {
		FUNC3(env, t, "Invalid name");
		return -EINVAL;
	}

	if (FUNC0(t)) {
		FUNC3(env, t, "Invalid btf_info kind_flag");
		return -EINVAL;
	}

	FUNC3(env, t, NULL);

	return meta_needed;
}