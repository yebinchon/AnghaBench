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
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 scalar_t__ FUNC6 (struct btf_type const*) ; 
 scalar_t__ FUNC7 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC9 (struct btf_verifier_env*,struct btf_type*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct btf_verifier_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct btf_verifier_env*,struct btf_type const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btf_verifier_env*,struct btf_type const*) ; 
 scalar_t__ FUNC13 (struct btf_verifier_env*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct btf_verifier_env *env,
			   const struct resolve_vertex *v)
{
	const struct btf_type *next_type;
	const struct btf_type *t = v->t;
	u32 next_type_id = t->type;
	struct btf *btf = env->btf;

	next_type = FUNC0(btf, next_type_id);
	if (!next_type || FUNC7(next_type)) {
		FUNC9(env, v->t, "Invalid type_id");
		return -EINVAL;
	}

	if (!FUNC12(env, next_type) &&
	    !FUNC13(env, next_type_id))
		return FUNC11(env, next_type, next_type_id);

	/* If the modifier was RESOLVED during RESOLVE_STRUCT_OR_ARRAY,
	 * the modifier may have stopped resolving when it was resolved
	 * to a ptr (last-resolved-ptr).
	 *
	 * We now need to continue from the last-resolved-ptr to
	 * ensure the last-resolved-ptr will not referring back to
	 * the currenct ptr (t).
	 */
	if (FUNC5(next_type)) {
		const struct btf_type *resolved_type;
		u32 resolved_type_id;

		resolved_type_id = next_type_id;
		resolved_type = FUNC1(btf, &resolved_type_id);

		if (FUNC6(resolved_type) &&
		    !FUNC12(env, resolved_type) &&
		    !FUNC13(env, resolved_type_id))
			return FUNC11(env, resolved_type,
					      resolved_type_id);
	}

	if (!FUNC2(btf, &next_type_id, NULL)) {
		if (FUNC13(env, next_type_id))
			next_type = FUNC1(btf, &next_type_id);

		if (!FUNC8(next_type) &&
		    !FUNC4(next_type) &&
		    !FUNC3(next_type)) {
			FUNC9(env, v->t, "Invalid type_id");
			return -EINVAL;
		}
	}

	FUNC10(env, next_type_id, 0);

	return 0;
}