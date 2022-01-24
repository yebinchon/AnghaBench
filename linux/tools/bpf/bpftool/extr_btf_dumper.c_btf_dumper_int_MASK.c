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
struct btf_type {int dummy; } ;
typedef  int /*<<< orphan*/  json_writer_t ;
typedef  char __u8 ;
typedef  char __u64 ;
typedef  int __u32 ;
typedef  char __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  BTF_INT_BOOL 130 
#define  BTF_INT_CHAR 129 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
#define  BTF_INT_SIGNED 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int,char,void const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char) ; 

__attribute__((used)) static int FUNC9(const struct btf_type *t, __u8 bit_offset,
			  const void *data, json_writer_t *jw,
			  bool is_plain_text)
{
	__u32 *int_type;
	__u32 nr_bits;

	int_type = (__u32 *)(t + 1);
	nr_bits = FUNC1(*int_type);
	/* if this is bit field */
	if (bit_offset || FUNC3(*int_type) ||
	    FUNC0(nr_bits)) {
		FUNC4(*int_type, bit_offset, data, jw,
				    is_plain_text);
		return 0;
	}

	if (nr_bits == 128) {
		FUNC5(jw, data, is_plain_text);
		return 0;
	}

	switch (FUNC2(*int_type)) {
	case 0:
		if (FUNC1(*int_type) == 64)
			FUNC8(jw, "%llu", *(__u64 *)data);
		else if (FUNC1(*int_type) == 32)
			FUNC8(jw, "%u", *(__u32 *)data);
		else if (FUNC1(*int_type) == 16)
			FUNC8(jw, "%hu", *(__u16 *)data);
		else if (FUNC1(*int_type) == 8)
			FUNC8(jw, "%hhu", *(__u8 *)data);
		else
			FUNC4(*int_type, bit_offset, data, jw,
					    is_plain_text);
		break;
	case BTF_INT_SIGNED:
		if (FUNC1(*int_type) == 64)
			FUNC8(jw, "%lld", *(long long *)data);
		else if (FUNC1(*int_type) == 32)
			FUNC8(jw, "%d", *(int *)data);
		else if (FUNC1(*int_type) == 16)
			FUNC8(jw, "%hd", *(short *)data);
		else if (FUNC1(*int_type) == 8)
			FUNC8(jw, "%hhd", *(char *)data);
		else
			FUNC4(*int_type, bit_offset, data, jw,
					    is_plain_text);
		break;
	case BTF_INT_CHAR:
		if (FUNC6(*(char *)data))
			FUNC8(jw, "\"%c\"", *(char *)data);
		else
			if (is_plain_text)
				FUNC8(jw, "0x%hhx", *(char *)data);
			else
				FUNC8(jw, "\"\\u00%02hhx\"",
					     *(char *)data);
		break;
	case BTF_INT_BOOL:
		FUNC7(jw, *(int *)data);
		break;
	default:
		/* shouldn't happen */
		return -EINVAL;
	}

	return 0;
}