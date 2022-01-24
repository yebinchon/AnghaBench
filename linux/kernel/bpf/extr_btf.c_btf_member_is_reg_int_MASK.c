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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct btf_type {int dummy; } ;
struct btf_member {scalar_t__ type; scalar_t__ offset; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct btf_type* FUNC6 (struct btf const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_type const*) ; 
 scalar_t__ FUNC9 (struct btf_type const*) ; 

bool FUNC10(const struct btf *btf, const struct btf_type *s,
			   const struct btf_member *m,
			   u32 expected_offset, u32 expected_size)
{
	const struct btf_type *t;
	u32 id, int_data;
	u8 nr_bits;

	id = m->type;
	t = FUNC6(btf, &id, NULL);
	if (!t || !FUNC8(t))
		return false;

	int_data = FUNC7(t);
	nr_bits = FUNC2(int_data);
	if (FUNC9(s)) {
		u32 bitfield_size = FUNC4(m->offset);
		u32 bit_offset = FUNC5(m->offset);

		/* if kflag set, int should be a regular int and
		 * bit offset should be at byte boundary.
		 */
		return !bitfield_size &&
		       FUNC1(bit_offset) == expected_offset &&
		       FUNC1(nr_bits) == expected_size;
	}

	if (FUNC3(int_data) ||
	    FUNC0(m->offset) ||
	    FUNC1(m->offset) != expected_offset ||
	    FUNC0(nr_bits) ||
	    FUNC1(nr_bits) != expected_size)
		return false;

	return true;
}