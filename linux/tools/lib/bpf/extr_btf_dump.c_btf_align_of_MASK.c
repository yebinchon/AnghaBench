#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct btf_type {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct btf_member {int /*<<< orphan*/  type; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 137 
#define  BTF_KIND_CONST 136 
#define  BTF_KIND_ENUM 135 
#define  BTF_KIND_INT 134 
#define  BTF_KIND_PTR 133 
#define  BTF_KIND_RESTRICT 132 
#define  BTF_KIND_STRUCT 131 
#define  BTF_KIND_TYPEDEF 130 
#define  BTF_KIND_UNION 129 
#define  BTF_KIND_VOLATILE 128 
 struct btf_type* FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct btf_type const*) ; 
 int FUNC2 (struct btf_type const*) ; 
 struct btf_member* FUNC3 (struct btf_type const*) ; 
 int FUNC4 (struct btf_type const*) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(const struct btf *btf, __u32 id)
{
	const struct btf_type *t = FUNC0(btf, id);
	__u16 kind = FUNC2(t);

	switch (kind) {
	case BTF_KIND_INT:
	case BTF_KIND_ENUM:
		return FUNC6(sizeof(void *), t->size);
	case BTF_KIND_PTR:
		return sizeof(void *);
	case BTF_KIND_TYPEDEF:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_CONST:
	case BTF_KIND_RESTRICT:
		return FUNC8(btf, t->type);
	case BTF_KIND_ARRAY:
		return FUNC8(btf, FUNC1(t)->type);
	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION: {
		const struct btf_member *m = FUNC3(t);
		__u16 vlen = FUNC4(t);
		int i, align = 1;

		for (i = 0; i < vlen; i++, m++)
			align = FUNC5(align, FUNC8(btf, m->type));

		return align;
	}
	default:
		FUNC7("unsupported BTF_KIND:%u\n", FUNC2(t));
		return 1;
	}
}