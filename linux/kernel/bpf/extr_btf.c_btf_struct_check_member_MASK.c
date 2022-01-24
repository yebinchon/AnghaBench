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
typedef  scalar_t__ u32 ;
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ size; } ;
struct btf_member {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ; 

__attribute__((used)) static int FUNC3(struct btf_verifier_env *env,
				   const struct btf_type *struct_type,
				   const struct btf_member *member,
				   const struct btf_type *member_type)
{
	u32 struct_bits_off = member->offset;
	u32 struct_size, bytes_offset;

	if (FUNC0(struct_bits_off)) {
		FUNC2(env, struct_type, member,
					"Member is not byte aligned");
		return -EINVAL;
	}

	struct_size = struct_type->size;
	bytes_offset = FUNC1(struct_bits_off);
	if (struct_size - bytes_offset < member_type->size) {
		FUNC2(env, struct_type, member,
					"Member exceeds struct_size");
		return -EINVAL;
	}

	return 0;
}