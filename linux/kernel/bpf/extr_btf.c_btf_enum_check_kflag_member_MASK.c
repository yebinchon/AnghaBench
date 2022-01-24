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
struct btf_member {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ; 

__attribute__((used)) static int FUNC5(struct btf_verifier_env *env,
				       const struct btf_type *struct_type,
				       const struct btf_member *member,
				       const struct btf_type *member_type)
{
	u32 struct_bits_off, nr_bits, bytes_end, struct_size;
	u32 int_bitsize = sizeof(int) * BITS_PER_BYTE;

	struct_bits_off = FUNC3(member->offset);
	nr_bits = FUNC2(member->offset);
	if (!nr_bits) {
		if (FUNC0(struct_bits_off)) {
			FUNC4(env, struct_type, member,
						"Member is not byte aligned");
			return -EINVAL;
		}

		nr_bits = int_bitsize;
	} else if (nr_bits > int_bitsize) {
		FUNC4(env, struct_type, member,
					"Invalid member bitfield_size");
		return -EINVAL;
	}

	struct_size = struct_type->size;
	bytes_end = FUNC1(struct_bits_off + nr_bits);
	if (struct_size < bytes_end) {
		FUNC4(env, struct_type, member,
					"Member exceeds struct_size");
		return -EINVAL;
	}

	return 0;
}