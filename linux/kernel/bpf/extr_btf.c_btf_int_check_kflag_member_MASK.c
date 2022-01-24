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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BITS_PER_U128 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC6 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC7 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ; 

__attribute__((used)) static int FUNC9(struct btf_verifier_env *env,
				      const struct btf_type *struct_type,
				      const struct btf_member *member,
				      const struct btf_type *member_type)
{
	u32 struct_bits_off, nr_bits, nr_int_data_bits, bytes_offset;
	u32 int_data = FUNC6(member_type);
	u32 struct_size = struct_type->size;
	u32 nr_copy_bits;

	/* a regular int type is required for the kflag int member */
	if (!FUNC7(member_type)) {
		FUNC8(env, struct_type, member,
					"Invalid member base type");
		return -EINVAL;
	}

	/* check sanity of bitfield size */
	nr_bits = FUNC4(member->offset);
	struct_bits_off = FUNC5(member->offset);
	nr_int_data_bits = FUNC3(int_data);
	if (!nr_bits) {
		/* Not a bitfield member, member offset must be at byte
		 * boundary.
		 */
		if (FUNC0(struct_bits_off)) {
			FUNC8(env, struct_type, member,
						"Invalid member offset");
			return -EINVAL;
		}

		nr_bits = nr_int_data_bits;
	} else if (nr_bits > nr_int_data_bits) {
		FUNC8(env, struct_type, member,
					"Invalid member bitfield_size");
		return -EINVAL;
	}

	bytes_offset = FUNC1(struct_bits_off);
	nr_copy_bits = nr_bits + FUNC0(struct_bits_off);
	if (nr_copy_bits > BITS_PER_U128) {
		FUNC8(env, struct_type, member,
					"nr_copy_bits exceeds 128");
		return -EINVAL;
	}

	if (struct_size < bytes_offset ||
	    struct_size - bytes_offset < FUNC2(nr_copy_bits)) {
		FUNC8(env, struct_type, member,
					"Member exceeds struct_size");
		return -EINVAL;
	}

	return 0;
}