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
struct btf_type {scalar_t__ name_off; int /*<<< orphan*/  info; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTF_KIND_TYPEDEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_verifier_env*,struct btf_type const*,char*) ; 

__attribute__((used)) static int FUNC6(struct btf_verifier_env *env,
				   const struct btf_type *t,
				   u32 meta_left)
{
	if (FUNC4(t)) {
		FUNC5(env, t, "vlen != 0");
		return -EINVAL;
	}

	if (FUNC3(t)) {
		FUNC5(env, t, "Invalid btf_info kind_flag");
		return -EINVAL;
	}

	if (!FUNC1(t->type)) {
		FUNC5(env, t, "Invalid type_id");
		return -EINVAL;
	}

	/* typedef type must have a valid name, and other ref types,
	 * volatile, const, restrict, should have a null name.
	 */
	if (FUNC0(t->info) == BTF_KIND_TYPEDEF) {
		if (!t->name_off ||
		    !FUNC2(env->btf, t->name_off)) {
			FUNC5(env, t, "Invalid name");
			return -EINVAL;
		}
	} else {
		if (t->name_off) {
			FUNC5(env, t, "Invalid name");
			return -EINVAL;
		}
	}

	FUNC5(env, t, NULL);

	return 0;
}