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
struct btf_var_secinfo {int dummy; } ;
struct btf_var {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_param {int dummy; } ;
struct btf_member {int dummy; } ;
struct btf_enum {int dummy; } ;
struct btf_array {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;

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
 int FUNC0 (struct btf_type*) ; 
 int FUNC1 (struct btf_type*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct btf_type *t)
{
	int base_size = sizeof(struct btf_type);
	__u16 vlen = FUNC1(t);

	switch (FUNC0(t)) {
	case BTF_KIND_FWD:
	case BTF_KIND_CONST:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_RESTRICT:
	case BTF_KIND_PTR:
	case BTF_KIND_TYPEDEF:
	case BTF_KIND_FUNC:
		return base_size;
	case BTF_KIND_INT:
		return base_size + sizeof(__u32);
	case BTF_KIND_ENUM:
		return base_size + vlen * sizeof(struct btf_enum);
	case BTF_KIND_ARRAY:
		return base_size + sizeof(struct btf_array);
	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION:
		return base_size + vlen * sizeof(struct btf_member);
	case BTF_KIND_FUNC_PROTO:
		return base_size + vlen * sizeof(struct btf_param);
	case BTF_KIND_VAR:
		return base_size + sizeof(struct btf_var);
	case BTF_KIND_DATASEC:
		return base_size + vlen * sizeof(struct btf_var_secinfo);
	default:
		FUNC2("Unsupported BTF_KIND:%u\n", FUNC0(t));
		return -EINVAL;
	}
}