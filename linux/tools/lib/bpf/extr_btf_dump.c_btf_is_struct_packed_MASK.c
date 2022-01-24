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
struct btf_type {int size; } ;
struct btf_member {int offset; int /*<<< orphan*/  type; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btf_type const*,int) ; 
 struct btf_member* FUNC2 (struct btf_type const*) ; 
 int FUNC3 (struct btf_type const*) ; 

__attribute__((used)) static bool FUNC4(const struct btf *btf, __u32 id,
				 const struct btf_type *t)
{
	const struct btf_member *m;
	int align, i, bit_sz;
	__u16 vlen;

	align = FUNC0(btf, id);
	/* size of a non-packed struct has to be a multiple of its alignment*/
	if (t->size % align)
		return true;

	m = FUNC2(t);
	vlen = FUNC3(t);
	/* all non-bitfield fields have to be naturally aligned */
	for (i = 0; i < vlen; i++, m++) {
		align = FUNC0(btf, m->type);
		bit_sz = FUNC1(t, i);
		if (bit_sz == 0 && m->offset % (8 * align) != 0)
			return true;
	}

	/*
	 * if original struct was marked as packed, but its layout is
	 * naturally aligned, we'll detect that it's not packed
	 */
	return false;
}