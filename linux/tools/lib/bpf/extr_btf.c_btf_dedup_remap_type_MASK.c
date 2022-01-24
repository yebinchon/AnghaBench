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
struct btf_var_secinfo {int type; } ;
struct btf_type {int type; } ;
struct btf_param {int type; } ;
struct btf_member {int type; } ;
struct btf_dedup {TYPE_1__* btf; } ;
struct btf_array {int type; int index_type; } ;
typedef  size_t __u32 ;
typedef  int __u16 ;
struct TYPE_2__ {struct btf_type** types; } ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 142 
#define  BTF_KIND_CONST 141 
#define  BTF_KIND_DATASEC 140 
#define  BTF_KIND_ENUM 139 
#define  BTF_KIND_FUNC 138 
#define  BTF_KIND_FUNC_PROTO 137 
#define  BTF_KIND_FWD 136 
#define  BTF_KIND_INT 135 
#define  BTF_KIND_PTR 134 
#define  BTF_KIND_RESTRICT 133 
#define  BTF_KIND_STRUCT 132 
#define  BTF_KIND_TYPEDEF 131 
#define  BTF_KIND_UNION 130 
#define  BTF_KIND_VAR 129 
#define  BTF_KIND_VOLATILE 128 
 int EINVAL ; 
 struct btf_array* FUNC0 (struct btf_type*) ; 
 int FUNC1 (struct btf_dedup*,int) ; 
 int FUNC2 (struct btf_type*) ; 
 struct btf_member* FUNC3 (struct btf_type*) ; 
 struct btf_param* FUNC4 (struct btf_type*) ; 
 struct btf_var_secinfo* FUNC5 (struct btf_type*) ; 
 int FUNC6 (struct btf_type*) ; 

__attribute__((used)) static int FUNC7(struct btf_dedup *d, __u32 type_id)
{
	struct btf_type *t = d->btf->types[type_id];
	int i, r;

	switch (FUNC2(t)) {
	case BTF_KIND_INT:
	case BTF_KIND_ENUM:
		break;

	case BTF_KIND_FWD:
	case BTF_KIND_CONST:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_RESTRICT:
	case BTF_KIND_PTR:
	case BTF_KIND_TYPEDEF:
	case BTF_KIND_FUNC:
	case BTF_KIND_VAR:
		r = FUNC1(d, t->type);
		if (r < 0)
			return r;
		t->type = r;
		break;

	case BTF_KIND_ARRAY: {
		struct btf_array *arr_info = FUNC0(t);

		r = FUNC1(d, arr_info->type);
		if (r < 0)
			return r;
		arr_info->type = r;
		r = FUNC1(d, arr_info->index_type);
		if (r < 0)
			return r;
		arr_info->index_type = r;
		break;
	}

	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION: {
		struct btf_member *member = FUNC3(t);
		__u16 vlen = FUNC6(t);

		for (i = 0; i < vlen; i++) {
			r = FUNC1(d, member->type);
			if (r < 0)
				return r;
			member->type = r;
			member++;
		}
		break;
	}

	case BTF_KIND_FUNC_PROTO: {
		struct btf_param *param = FUNC4(t);
		__u16 vlen = FUNC6(t);

		r = FUNC1(d, t->type);
		if (r < 0)
			return r;
		t->type = r;

		for (i = 0; i < vlen; i++) {
			r = FUNC1(d, param->type);
			if (r < 0)
				return r;
			param->type = r;
			param++;
		}
		break;
	}

	case BTF_KIND_DATASEC: {
		struct btf_var_secinfo *var = FUNC5(t);
		__u16 vlen = FUNC6(t);

		for (i = 0; i < vlen; i++) {
			r = FUNC1(d, var->type);
			if (r < 0)
				return r;
			var->type = r;
			var++;
		}
		break;
	}

	default:
		return -EINVAL;
	}

	return 0;
}