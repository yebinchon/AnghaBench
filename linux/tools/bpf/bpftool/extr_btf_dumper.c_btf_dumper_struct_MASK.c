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
struct btf_type {int /*<<< orphan*/  info; } ;
struct btf_member {int /*<<< orphan*/  type; int /*<<< orphan*/  name_off; scalar_t__ offset; } ;
struct btf_dumper {int /*<<< orphan*/  jw; int /*<<< orphan*/  is_plain_text; int /*<<< orphan*/  btf; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const struct btf_dumper *d, __u32 type_id,
			     const void *data)
{
	const struct btf_type *t;
	struct btf_member *m;
	const void *data_off;
	int kind_flag;
	int ret = 0;
	int i, vlen;

	t = FUNC7(d->btf, type_id);
	if (!t)
		return -EINVAL;

	kind_flag = FUNC2(t->info);
	vlen = FUNC3(t->info);
	FUNC12(d->jw);
	m = (struct btf_member *)(t + 1);

	for (i = 0; i < vlen; i++) {
		__u32 bit_offset = m[i].offset;
		__u32 bitfield_size = 0;

		if (kind_flag) {
			bitfield_size = FUNC4(bit_offset);
			bit_offset = FUNC5(bit_offset);
		}

		FUNC11(d->jw, FUNC6(d->btf, m[i].name_off));
		data_off = data + FUNC1(bit_offset);
		if (bitfield_size) {
			FUNC8(bitfield_size,
					    FUNC0(bit_offset),
					    data_off, d->jw, d->is_plain_text);
		} else {
			ret = FUNC9(d, m[i].type,
						 FUNC0(bit_offset),
						 data_off);
			if (ret)
				break;
		}
	}

	FUNC10(d->jw);

	return ret;
}