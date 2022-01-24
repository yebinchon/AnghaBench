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
typedef  int u32 ;
struct resolve_vertex {int /*<<< orphan*/  t; } ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int dummy; } ;
struct btf_array {int index_type; int type; int nelems; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int U32_MAX ; 
 struct btf_array* FUNC0 (int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC1 (struct btf*,int) ; 
 struct btf_type* FUNC2 (struct btf*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 scalar_t__ FUNC6 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC7 (struct btf_verifier_env*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_verifier_env*,int,int) ; 
 int FUNC9 (struct btf_verifier_env*,struct btf_type const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btf_verifier_env*,struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC11 (struct btf_verifier_env*,int) ; 

__attribute__((used)) static int FUNC12(struct btf_verifier_env *env,
			     const struct resolve_vertex *v)
{
	const struct btf_array *array = FUNC0(v->t);
	const struct btf_type *elem_type, *index_type;
	u32 elem_type_id, index_type_id;
	struct btf *btf = env->btf;
	u32 elem_size;

	/* Check array->index_type */
	index_type_id = array->index_type;
	index_type = FUNC1(btf, index_type_id);
	if (FUNC6(index_type) ||
	    FUNC5(index_type)) {
		FUNC7(env, v->t, "Invalid index");
		return -EINVAL;
	}

	if (!FUNC10(env, index_type) &&
	    !FUNC11(env, index_type_id))
		return FUNC9(env, index_type, index_type_id);

	index_type = FUNC2(btf, &index_type_id, NULL);
	if (!index_type || !FUNC4(index_type) ||
	    !FUNC3(index_type)) {
		FUNC7(env, v->t, "Invalid index");
		return -EINVAL;
	}

	/* Check array->type */
	elem_type_id = array->type;
	elem_type = FUNC1(btf, elem_type_id);
	if (FUNC6(elem_type) ||
	    FUNC5(elem_type)) {
		FUNC7(env, v->t,
				      "Invalid elem");
		return -EINVAL;
	}

	if (!FUNC10(env, elem_type) &&
	    !FUNC11(env, elem_type_id))
		return FUNC9(env, elem_type, elem_type_id);

	elem_type = FUNC2(btf, &elem_type_id, &elem_size);
	if (!elem_type) {
		FUNC7(env, v->t, "Invalid elem");
		return -EINVAL;
	}

	if (FUNC4(elem_type) && !FUNC3(elem_type)) {
		FUNC7(env, v->t, "Invalid array of int");
		return -EINVAL;
	}

	if (array->nelems && elem_size > U32_MAX / array->nelems) {
		FUNC7(env, v->t,
				      "Array size overflows U32_MAX");
		return -EINVAL;
	}

	FUNC8(env, elem_type_id, elem_size * array->nelems);

	return 0;
}