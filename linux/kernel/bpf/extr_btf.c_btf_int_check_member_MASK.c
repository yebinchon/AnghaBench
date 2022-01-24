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
 scalar_t__ BITS_PER_U128 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ U32_MAX ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC6 (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ; 

__attribute__((used)) static int FUNC7(struct btf_verifier_env *env,
				const struct btf_type *struct_type,
				const struct btf_member *member,
				const struct btf_type *member_type)
{
	u32 int_data = FUNC5(member_type);
	u32 struct_bits_off = member->offset;
	u32 struct_size = struct_type->size;
	u32 nr_copy_bits;
	u32 bytes_offset;

	if (U32_MAX - struct_bits_off < FUNC4(int_data)) {
		FUNC6(env, struct_type, member,
					"bits_offset exceeds U32_MAX");
		return -EINVAL;
	}

	struct_bits_off += FUNC4(int_data);
	bytes_offset = FUNC1(struct_bits_off);
	nr_copy_bits = FUNC3(int_data) +
		FUNC0(struct_bits_off);

	if (nr_copy_bits > BITS_PER_U128) {
		FUNC6(env, struct_type, member,
					"nr_copy_bits exceeds 128");
		return -EINVAL;
	}

	if (struct_size < bytes_offset ||
	    struct_size - bytes_offset < FUNC2(nr_copy_bits)) {
		FUNC6(env, struct_type, member,
					"Member exceeds struct_size");
		return -EINVAL;
	}

	return 0;
}