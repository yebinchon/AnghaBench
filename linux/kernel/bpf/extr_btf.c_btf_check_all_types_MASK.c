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
struct btf_verifier_env {int log_type_id; int /*<<< orphan*/  phase; struct btf* btf; } ;
struct btf_type {int dummy; } ;
struct btf {int nr_types; } ;

/* Variables and functions */
 int FUNC0 (struct btf_verifier_env*,struct btf_type const*) ; 
 int FUNC1 (struct btf_verifier_env*,struct btf_type const*) ; 
 int FUNC2 (struct btf_verifier_env*,struct btf_type const*,int) ; 
 struct btf_type* FUNC3 (struct btf*,int) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 scalar_t__ FUNC6 (struct btf_type const*) ; 
 int FUNC7 (struct btf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_verifier_env*,int) ; 

__attribute__((used)) static int FUNC9(struct btf_verifier_env *env)
{
	struct btf *btf = env->btf;
	u32 type_id;
	int err;

	err = FUNC7(env);
	if (err)
		return err;

	env->phase++;
	for (type_id = 1; type_id <= btf->nr_types; type_id++) {
		const struct btf_type *t = FUNC3(btf, type_id);

		env->log_type_id = type_id;
		if (FUNC6(t) &&
		    !FUNC8(env, type_id)) {
			err = FUNC2(env, t, type_id);
			if (err)
				return err;
		}

		if (FUNC5(t)) {
			err = FUNC1(env, t);
			if (err)
				return err;
		}

		if (FUNC4(t)) {
			err = FUNC0(env, t);
			if (err)
				return err;
		}
	}

	return 0;
}