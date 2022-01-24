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
typedef  size_t u16 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int /*<<< orphan*/  type; } ;
struct btf_param {scalar_t__ type; int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct btf_type* FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type const*) ; 
 size_t FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_verifier_env*,struct btf_type const*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct btf_verifier_env *env,
			  const struct btf_type *t)
{
	const struct btf_type *proto_type;
	const struct btf_param *args;
	const struct btf *btf;
	u16 nr_args, i;

	btf = env->btf;
	proto_type = FUNC0(btf, t->type);

	if (!proto_type || !FUNC1(proto_type)) {
		FUNC3(env, t, "Invalid type_id");
		return -EINVAL;
	}

	args = (const struct btf_param *)(proto_type + 1);
	nr_args = FUNC2(proto_type);
	for (i = 0; i < nr_args; i++) {
		if (!args[i].name_off && args[i].type) {
			FUNC3(env, t, "Invalid arg#%u", i + 1);
			return -EINVAL;
		}
	}

	return 0;
}