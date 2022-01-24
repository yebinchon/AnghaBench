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
struct btf_dumper {int /*<<< orphan*/  jw; int /*<<< orphan*/  is_plain_text; int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  BTF_KIND_ARRAY 141 
#define  BTF_KIND_CONST 140 
#define  BTF_KIND_DATASEC 139 
#define  BTF_KIND_ENUM 138 
#define  BTF_KIND_FWD 137 
#define  BTF_KIND_INT 136 
#define  BTF_KIND_PTR 135 
#define  BTF_KIND_RESTRICT 134 
#define  BTF_KIND_STRUCT 133 
#define  BTF_KIND_TYPEDEF 132 
#define  BTF_KIND_UNION 131 
#define  BTF_KIND_UNKN 130 
#define  BTF_KIND_VAR 129 
#define  BTF_KIND_VOLATILE 128 
 int EINVAL ; 
 struct btf_type* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btf_dumper const*,int /*<<< orphan*/ ,void const*) ; 
 int FUNC3 (struct btf_dumper const*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btf_type const*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC7 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btf_dumper const*,int /*<<< orphan*/ ,void const*) ; 
 int FUNC9 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(const struct btf_dumper *d, __u32 type_id,
			      __u8 bit_offset, const void *data)
{
	const struct btf_type *t = FUNC1(d->btf, type_id);

	switch (FUNC0(t->info)) {
	case BTF_KIND_INT:
		return FUNC5(t, bit_offset, data, d->jw,
				     d->is_plain_text);
	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION:
		return FUNC8(d, type_id, data);
	case BTF_KIND_ARRAY:
		return FUNC2(d, type_id, data);
	case BTF_KIND_ENUM:
		FUNC4(data, d->jw);
		return 0;
	case BTF_KIND_PTR:
		FUNC7(data, d->jw, d->is_plain_text);
		return 0;
	case BTF_KIND_UNKN:
		FUNC10(d->jw, "(unknown)");
		return 0;
	case BTF_KIND_FWD:
		/* map key or value can't be forward */
		FUNC10(d->jw, "(fwd-kind-invalid)");
		return -EINVAL;
	case BTF_KIND_TYPEDEF:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_CONST:
	case BTF_KIND_RESTRICT:
		return FUNC6(d, type_id, bit_offset, data);
	case BTF_KIND_VAR:
		return FUNC9(d, type_id, bit_offset, data);
	case BTF_KIND_DATASEC:
		return FUNC3(d, type_id, data);
	default:
		FUNC10(d->jw, "(unsupported-kind");
		return -EINVAL;
	}
}