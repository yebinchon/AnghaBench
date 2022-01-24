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
typedef  int /*<<< orphan*/  u32 ;
struct btf_verifier_env {int /*<<< orphan*/  btf; } ;
struct btf_type {int /*<<< orphan*/  name_off; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct btf_type const*) ; 
 scalar_t__ FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_verifier_env*,struct btf_type const*,char*) ; 

__attribute__((used)) static s32 FUNC4(struct btf_verifier_env *env,
			       const struct btf_type *t,
			       u32 meta_left)
{
	if (!t->name_off ||
	    !FUNC0(env->btf, t->name_off)) {
		FUNC3(env, t, "Invalid name");
		return -EINVAL;
	}

	if (FUNC2(t)) {
		FUNC3(env, t, "vlen != 0");
		return -EINVAL;
	}

	if (FUNC1(t)) {
		FUNC3(env, t, "Invalid btf_info kind_flag");
		return -EINVAL;
	}

	FUNC3(env, t, NULL);

	return 0;
}