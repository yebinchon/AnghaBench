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
struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_member {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct btf_verifier_env*,struct btf_type const*,char*) ; 

__attribute__((used)) static int FUNC1(struct btf_verifier_env *env,
				     const struct btf_type *struct_type,
				     const struct btf_member *member,
				     const struct btf_type *member_type)
{
	FUNC0(env, struct_type,
			       "Unsupported check_kflag_member");
	return -EINVAL;
}