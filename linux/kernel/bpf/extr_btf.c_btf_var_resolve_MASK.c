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
struct resolve_vertex {struct btf_type* t; } ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int /*<<< orphan*/  type; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct btf_type* FUNC0 (struct btf*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC1 (struct btf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC6 (struct btf_verifier_env*,struct btf_type*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct btf_verifier_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btf_verifier_env*,struct btf_type const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btf_verifier_env*,struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC10 (struct btf_verifier_env*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct btf_verifier_env *env,
			   const struct resolve_vertex *v)
{
	const struct btf_type *next_type;
	const struct btf_type *t = v->t;
	u32 next_type_id = t->type;
	struct btf *btf = env->btf;

	next_type = FUNC0(btf, next_type_id);
	if (!next_type || FUNC5(next_type)) {
		FUNC6(env, v->t, "Invalid type_id");
		return -EINVAL;
	}

	if (!FUNC9(env, next_type) &&
	    !FUNC10(env, next_type_id))
		return FUNC8(env, next_type, next_type_id);

	if (FUNC3(next_type)) {
		const struct btf_type *resolved_type;
		u32 resolved_type_id;

		resolved_type_id = next_type_id;
		resolved_type = FUNC1(btf, &resolved_type_id);

		if (FUNC4(resolved_type) &&
		    !FUNC9(env, resolved_type) &&
		    !FUNC10(env, resolved_type_id))
			return FUNC8(env, resolved_type,
					      resolved_type_id);
	}

	/* We must resolve to something concrete at this point, no
	 * forward types or similar that would resolve to size of
	 * zero is allowed.
	 */
	if (!FUNC2(btf, &next_type_id, NULL)) {
		FUNC6(env, v->t, "Invalid type_id");
		return -EINVAL;
	}

	FUNC7(env, next_type_id, 0);

	return 0;
}