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
struct btf_var_secinfo {int offset; int type; } ;
struct btf_type {int size; void* info; int /*<<< orphan*/  name_off; } ;
struct btf_member {int offset; int type; int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;
struct TYPE_2__ {int btf_datasec; int btf_func; } ;
struct bpf_object {struct btf* btf; TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTF_KIND_ENUM ; 
 int /*<<< orphan*/  BTF_KIND_INT ; 
 int /*<<< orphan*/  BTF_KIND_STRUCT ; 
 int /*<<< orphan*/  BTF_KIND_TYPEDEF ; 
 int FUNC2 (struct btf*) ; 
 scalar_t__ FUNC3 (struct btf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct btf*,int) ; 
 scalar_t__ FUNC5 (struct btf_type*) ; 
 scalar_t__ FUNC6 (struct btf_type*) ; 
 scalar_t__ FUNC7 (struct btf_type*) ; 
 scalar_t__ FUNC8 (struct btf_type*) ; 
 struct btf_member* FUNC9 (struct btf_type*) ; 
 struct btf_var_secinfo* FUNC10 (struct btf_type*) ; 
 int FUNC11 (struct btf_type*) ; 

__attribute__((used)) static void FUNC12(struct bpf_object *obj)
{
	bool has_datasec = obj->caps.btf_datasec;
	bool has_func = obj->caps.btf_func;
	struct btf *btf = obj->btf;
	struct btf_type *t;
	int i, j, vlen;

	if (!obj->btf || (has_func && has_datasec))
		return;

	for (i = 1; i <= FUNC2(btf); i++) {
		t = (struct btf_type *)FUNC4(btf, i);

		if (!has_datasec && FUNC8(t)) {
			/* replace VAR with INT */
			t->info = FUNC0(BTF_KIND_INT, 0, 0);
			/*
			 * using size = 1 is the safest choice, 4 will be too
			 * big and cause kernel BTF validation failure if
			 * original variable took less than 4 bytes
			 */
			t->size = 1;
			*(int *)(t + 1) = FUNC1(0, 0, 8);
		} else if (!has_datasec && FUNC5(t)) {
			/* replace DATASEC with STRUCT */
			const struct btf_var_secinfo *v = FUNC10(t);
			struct btf_member *m = FUNC9(t);
			struct btf_type *vt;
			char *name;

			name = (char *)FUNC3(btf, t->name_off);
			while (*name) {
				if (*name == '.')
					*name = '_';
				name++;
			}

			vlen = FUNC11(t);
			t->info = FUNC0(BTF_KIND_STRUCT, 0, vlen);
			for (j = 0; j < vlen; j++, v++, m++) {
				/* order of field assignments is important */
				m->offset = v->offset * 8;
				m->type = v->type;
				/* preserve variable name as member name */
				vt = (void *)FUNC4(btf, v->type);
				m->name_off = vt->name_off;
			}
		} else if (!has_func && FUNC7(t)) {
			/* replace FUNC_PROTO with ENUM */
			vlen = FUNC11(t);
			t->info = FUNC0(BTF_KIND_ENUM, 0, vlen);
			t->size = sizeof(__u32); /* kernel enforced */
		} else if (!has_func && FUNC6(t)) {
			/* replace FUNC with TYPEDEF */
			t->info = FUNC0(BTF_KIND_TYPEDEF, 0, 0);
		}
	}
}