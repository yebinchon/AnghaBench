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
typedef  int u16 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int size; scalar_t__ name_off; } ;
struct btf_enum {int /*<<< orphan*/  val; scalar_t__ name_off; } ;
struct btf {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct btf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btf*,scalar_t__) ; 
 struct btf_enum* FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 int FUNC5 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC6 (struct btf_verifier_env*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct btf_verifier_env*,struct btf_type const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_verifier_env*,struct btf_type const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static s32 FUNC10(struct btf_verifier_env *env,
			       const struct btf_type *t,
			       u32 meta_left)
{
	const struct btf_enum *enums = FUNC3(t);
	struct btf *btf = env->btf;
	u16 i, nr_enums;
	u32 meta_needed;

	nr_enums = FUNC5(t);
	meta_needed = nr_enums * sizeof(*enums);

	if (meta_left < meta_needed) {
		FUNC7(env, t,
				       "meta_left:%u meta_needed:%u",
				       meta_left, meta_needed);
		return -EINVAL;
	}

	if (FUNC4(t)) {
		FUNC8(env, t, "Invalid btf_info kind_flag");
		return -EINVAL;
	}

	if (t->size > 8 || !FUNC9(t->size)) {
		FUNC8(env, t, "Unexpected size");
		return -EINVAL;
	}

	/* enum type either no name or a valid one */
	if (t->name_off &&
	    !FUNC2(env->btf, t->name_off)) {
		FUNC8(env, t, "Invalid name");
		return -EINVAL;
	}

	FUNC8(env, t, NULL);

	for (i = 0; i < nr_enums; i++) {
		if (!FUNC1(btf, enums[i].name_off)) {
			FUNC6(env, "\tInvalid name_offset:%u",
					 enums[i].name_off);
			return -EINVAL;
		}

		/* enum member must have a valid name */
		if (!enums[i].name_off ||
		    !FUNC2(btf, enums[i].name_off)) {
			FUNC8(env, t, "Invalid name");
			return -EINVAL;
		}


		FUNC6(env, "\t%s val=%d\n",
				 FUNC0(btf, enums[i].name_off),
				 enums[i].val);
	}

	return meta_needed;
}