#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct btf_verifier_env {TYPE_1__* btf; } ;
struct btf_header {int type_off; int /*<<< orphan*/  type_len; } ;
struct TYPE_2__ {struct btf_header hdr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct btf_verifier_env*) ; 
 int FUNC1 (struct btf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_verifier_env*,char*) ; 

__attribute__((used)) static int FUNC3(struct btf_verifier_env *env)
{
	const struct btf_header *hdr = &env->btf->hdr;
	int err;

	/* Type section must align to 4 bytes */
	if (hdr->type_off & (sizeof(u32) - 1)) {
		FUNC2(env, "Unaligned type_off");
		return -EINVAL;
	}

	if (!hdr->type_len) {
		FUNC2(env, "No type found");
		return -EINVAL;
	}

	err = FUNC0(env);
	if (err)
		return err;

	return FUNC1(env);
}