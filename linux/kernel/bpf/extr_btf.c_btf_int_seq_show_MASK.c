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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
typedef  int s8 ;
typedef  int s64 ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int BTF_INT_SIGNED ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf const*,struct btf_type const*,void*,int,struct seq_file*) ; 
 int FUNC6 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC8(const struct btf *btf, const struct btf_type *t,
			     u32 type_id, void *data, u8 bits_offset,
			     struct seq_file *m)
{
	u32 int_data = FUNC6(t);
	u8 encoding = FUNC2(int_data);
	bool sign = encoding & BTF_INT_SIGNED;
	u8 nr_bits = FUNC1(int_data);

	if (bits_offset || FUNC3(int_data) ||
	    FUNC0(nr_bits)) {
		FUNC5(btf, t, data, bits_offset, m);
		return;
	}

	switch (nr_bits) {
	case 128:
		FUNC4(m, data);
		break;
	case 64:
		if (sign)
			FUNC7(m, "%lld", *(s64 *)data);
		else
			FUNC7(m, "%llu", *(u64 *)data);
		break;
	case 32:
		if (sign)
			FUNC7(m, "%d", *(s32 *)data);
		else
			FUNC7(m, "%u", *(u32 *)data);
		break;
	case 16:
		if (sign)
			FUNC7(m, "%d", *(s16 *)data);
		else
			FUNC7(m, "%u", *(u16 *)data);
		break;
	case 8:
		if (sign)
			FUNC7(m, "%d", *(s8 *)data);
		else
			FUNC7(m, "%u", *(u8 *)data);
		break;
	default:
		FUNC5(btf, t, data, bits_offset, m);
	}
}