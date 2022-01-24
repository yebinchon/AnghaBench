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
typedef  int u16 ;
struct btf_verifier_env {int /*<<< orphan*/  btf; } ;
struct btf_type {int /*<<< orphan*/  type; } ;
struct btf_param {int /*<<< orphan*/  name_off; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_verifier_env*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct btf_verifier_env *env,
			       const struct btf_type *t)
{
	const struct btf_param *args = (const struct btf_param *)(t + 1);
	u16 nr_args = FUNC1(t), i;

	FUNC2(env, "return=%u args=(", t->type);
	if (!nr_args) {
		FUNC2(env, "void");
		goto done;
	}

	if (nr_args == 1 && !args[0].type) {
		/* Only one vararg */
		FUNC2(env, "vararg");
		goto done;
	}

	FUNC2(env, "%u %s", args[0].type,
			 FUNC0(env->btf,
					      args[0].name_off));
	for (i = 1; i < nr_args - 1; i++)
		FUNC2(env, ", %u %s", args[i].type,
				 FUNC0(env->btf,
						      args[i].name_off));

	if (nr_args > 1) {
		const struct btf_param *last_arg = &args[nr_args - 1];

		if (last_arg->type)
			FUNC2(env, ", %u %s", last_arg->type,
					 FUNC0(env->btf,
							      last_arg->name_off));
		else
			FUNC2(env, ", vararg");
	}

done:
	FUNC2(env, ")");
}