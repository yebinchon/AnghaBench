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
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int dummy; } ;
struct btf_array {size_t type; size_t nelems; } ;
struct btf {size_t* resolved_sizes; int /*<<< orphan*/ * resolved_ids; } ;

/* Variables and functions */
 struct btf_array* FUNC0 (struct btf_type const*) ; 
 struct btf_type* FUNC1 (struct btf*,size_t*) ; 
 struct btf_type* FUNC2 (struct btf*,size_t*,size_t*) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 scalar_t__ FUNC6 (struct btf_type const*) ; 
 scalar_t__ FUNC7 (struct btf_type const*) ; 
 scalar_t__ FUNC8 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC9 (struct btf_verifier_env*,size_t) ; 

__attribute__((used)) static bool FUNC10(struct btf_verifier_env *env,
			      const struct btf_type *t,
			      u32 type_id)
{
	struct btf *btf = env->btf;

	if (!FUNC9(env, type_id))
		return false;

	if (FUNC7(t) || FUNC4(t))
		return !btf->resolved_ids[type_id] &&
		       !btf->resolved_sizes[type_id];

	if (FUNC5(t) || FUNC6(t) ||
	    FUNC8(t)) {
		t = FUNC1(btf, &type_id);
		return t &&
		       !FUNC5(t) &&
		       !FUNC8(t) &&
		       !FUNC4(t);
	}

	if (FUNC3(t)) {
		const struct btf_array *array = FUNC0(t);
		const struct btf_type *elem_type;
		u32 elem_type_id = array->type;
		u32 elem_size;

		elem_type = FUNC2(btf, &elem_type_id, &elem_size);
		return elem_type && !FUNC5(elem_type) &&
			(array->nelems * elem_size ==
			 btf->resolved_sizes[type_id]);
	}

	return false;
}