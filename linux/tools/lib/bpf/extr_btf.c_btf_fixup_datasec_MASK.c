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
struct btf_var_secinfo {scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct btf_var {scalar_t__ linkage; } ;
struct btf_type {scalar_t__ size; int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ BTF_VAR_STATIC ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (struct bpf_object*,char const*,scalar_t__*) ; 
 int FUNC1 (struct bpf_object*,char const*,scalar_t__*) ; 
 char* FUNC2 (struct btf*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC3 (struct btf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 
 struct btf_var* FUNC5 (struct btf_type const*) ; 
 struct btf_var_secinfo* FUNC6 (struct btf_type*) ; 
 scalar_t__ FUNC7 (struct btf_type*) ; 
 int /*<<< orphan*/  compare_vsi_off ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct btf_type*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct bpf_object *obj, struct btf *btf,
			     struct btf_type *t)
{
	__u32 size = 0, off = 0, i, vars = FUNC7(t);
	const char *name = FUNC2(btf, t->name_off);
	const struct btf_type *t_var;
	struct btf_var_secinfo *vsi;
	const struct btf_var *var;
	int ret;

	if (!name) {
		FUNC8("No name found in string section for DATASEC kind.\n");
		return -ENOENT;
	}

	ret = FUNC0(obj, name, &size);
	if (ret || !size || (t->size && t->size != size)) {
		FUNC8("Invalid size for section %s: %u bytes\n", name, size);
		return -ENOENT;
	}

	t->size = size;

	for (i = 0, vsi = FUNC6(t); i < vars; i++, vsi++) {
		t_var = FUNC3(btf, vsi->type);
		var = FUNC5(t_var);

		if (!FUNC4(t_var)) {
			FUNC8("Non-VAR type seen in section %s\n", name);
			return -EINVAL;
		}

		if (var->linkage == BTF_VAR_STATIC)
			continue;

		name = FUNC2(btf, t_var->name_off);
		if (!name) {
			FUNC8("No name found in string section for VAR kind\n");
			return -ENOENT;
		}

		ret = FUNC1(obj, name, &off);
		if (ret) {
			FUNC8("No offset found in symbol table for VAR %s\n",
				 name);
			return -ENOENT;
		}

		vsi->offset = off;
	}

	FUNC9(t + 1, vars, sizeof(*vsi), compare_vsi_off);
	return 0;
}