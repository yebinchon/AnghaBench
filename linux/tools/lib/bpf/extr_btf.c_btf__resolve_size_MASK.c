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
struct btf_type {int size; int type; } ;
struct btf_array {int nelems; int type; } ;
struct btf {int dummy; } ;
typedef  int __u32 ;
typedef  int __s64 ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 139 
#define  BTF_KIND_CONST 138 
#define  BTF_KIND_DATASEC 137 
#define  BTF_KIND_ENUM 136 
#define  BTF_KIND_INT 135 
#define  BTF_KIND_PTR 134 
#define  BTF_KIND_RESTRICT 133 
#define  BTF_KIND_STRUCT 132 
#define  BTF_KIND_TYPEDEF 131 
#define  BTF_KIND_UNION 130 
#define  BTF_KIND_VAR 129 
#define  BTF_KIND_VOLATILE 128 
 int E2BIG ; 
 int EINVAL ; 
 int MAX_RESOLVE_DEPTH ; 
 int UINT32_MAX ; 
 struct btf_type* FUNC0 (struct btf const*,int) ; 
 struct btf_array* FUNC1 (struct btf_type const*) ; 
 int FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 

__s64 FUNC4(const struct btf *btf, __u32 type_id)
{
	const struct btf_array *array;
	const struct btf_type *t;
	__u32 nelems = 1;
	__s64 size = -1;
	int i;

	t = FUNC0(btf, type_id);
	for (i = 0; i < MAX_RESOLVE_DEPTH && !FUNC3(t);
	     i++) {
		switch (FUNC2(t)) {
		case BTF_KIND_INT:
		case BTF_KIND_STRUCT:
		case BTF_KIND_UNION:
		case BTF_KIND_ENUM:
		case BTF_KIND_DATASEC:
			size = t->size;
			goto done;
		case BTF_KIND_PTR:
			size = sizeof(void *);
			goto done;
		case BTF_KIND_TYPEDEF:
		case BTF_KIND_VOLATILE:
		case BTF_KIND_CONST:
		case BTF_KIND_RESTRICT:
		case BTF_KIND_VAR:
			type_id = t->type;
			break;
		case BTF_KIND_ARRAY:
			array = FUNC1(t);
			if (nelems && array->nelems > UINT32_MAX / nelems)
				return -E2BIG;
			nelems *= array->nelems;
			type_id = array->type;
			break;
		default:
			return -EINVAL;
		}

		t = FUNC0(btf, type_id);
	}

	if (size < 0)
		return -EINVAL;

done:
	if (nelems && size > UINT32_MAX / nelems)
		return -E2BIG;

	return nelems * size;
}