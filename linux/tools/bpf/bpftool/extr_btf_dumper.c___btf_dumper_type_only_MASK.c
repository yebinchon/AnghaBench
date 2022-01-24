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
struct btf_var {int /*<<< orphan*/  linkage; } ;
struct btf_type {int /*<<< orphan*/  name_off; int /*<<< orphan*/  type; int /*<<< orphan*/  info; } ;
struct btf_array {int /*<<< orphan*/  nelems; int /*<<< orphan*/  type; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  BTF_KIND_ARRAY 143 
#define  BTF_KIND_CONST 142 
#define  BTF_KIND_DATASEC 141 
#define  BTF_KIND_ENUM 140 
#define  BTF_KIND_FUNC 139 
#define  BTF_KIND_FUNC_PROTO 138 
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
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTF_VAR_STATIC ; 
 int /*<<< orphan*/  FUNC4 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC5 (struct btf const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btf const*,char*,struct btf_type const*,struct btf_type const*,int,int) ; 

__attribute__((used)) static int FUNC7(const struct btf *btf, __u32 type_id,
				  char *func_sig, int pos, int size)
{
	const struct btf_type *proto_type;
	const struct btf_array *array;
	const struct btf_var *var;
	const struct btf_type *t;

	if (!type_id) {
		FUNC2("void ");
		return pos;
	}

	t = FUNC5(btf, type_id);

	switch (FUNC1(t->info)) {
	case BTF_KIND_INT:
	case BTF_KIND_TYPEDEF:
		FUNC2("%s ", FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_STRUCT:
		FUNC2("struct %s ",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_UNION:
		FUNC2("union %s ",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_ENUM:
		FUNC2("enum %s ",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_ARRAY:
		array = (struct btf_array *)(t + 1);
		FUNC3(array->type);
		FUNC2("[%d]", array->nelems);
		break;
	case BTF_KIND_PTR:
		FUNC3(t->type);
		FUNC2("* ");
		break;
	case BTF_KIND_FWD:
		FUNC2("%s %s ",
			      FUNC0(t->info) ? "union" : "struct",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_VOLATILE:
		FUNC2("volatile ");
		FUNC3(t->type);
		break;
	case BTF_KIND_CONST:
		FUNC2("const ");
		FUNC3(t->type);
		break;
	case BTF_KIND_RESTRICT:
		FUNC2("restrict ");
		FUNC3(t->type);
		break;
	case BTF_KIND_FUNC_PROTO:
		pos = FUNC6(btf, func_sig, t, NULL, pos, size);
		if (pos == -1)
			return -1;
		break;
	case BTF_KIND_FUNC:
		proto_type = FUNC5(btf, t->type);
		pos = FUNC6(btf, func_sig, proto_type, t, pos, size);
		if (pos == -1)
			return -1;
		break;
	case BTF_KIND_VAR:
		var = (struct btf_var *)(t + 1);
		if (var->linkage == BTF_VAR_STATIC)
			FUNC2("static ");
		FUNC3(t->type);
		FUNC2(" %s",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_DATASEC:
		FUNC2("section (\"%s\") ",
			      FUNC4(btf, t->name_off));
		break;
	case BTF_KIND_UNKN:
	default:
		return -1;
	}

	return pos;
}