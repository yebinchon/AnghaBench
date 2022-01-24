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
struct id_stack {int cnt; scalar_t__* ids; } ;
struct btf_type {int /*<<< orphan*/  name_off; } ;
struct btf_param {int /*<<< orphan*/  type; int /*<<< orphan*/  name_off; } ;
struct btf_dump {int /*<<< orphan*/  btf; } ;
struct btf_array {int /*<<< orphan*/  nelems; } ;
typedef  scalar_t__ __u32 ;
typedef  int __u16 ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 139 
#define  BTF_KIND_CONST 138 
#define  BTF_KIND_ENUM 137 
#define  BTF_KIND_FUNC_PROTO 136 
#define  BTF_KIND_FWD 135 
#define  BTF_KIND_INT 134 
#define  BTF_KIND_PTR 133 
#define  BTF_KIND_RESTRICT 132 
#define  BTF_KIND_STRUCT 131 
#define  BTF_KIND_TYPEDEF 130 
#define  BTF_KIND_UNION 129 
#define  BTF_KIND_VOLATILE 128 
 struct btf_type* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct btf_array* FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_dump*,scalar_t__,struct btf_type const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_dump*,scalar_t__,struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_dump*,scalar_t__,struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_dump*,struct id_stack*) ; 
 int /*<<< orphan*/  FUNC6 (struct btf_dump*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btf_dump*,scalar_t__,struct btf_type const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btf_dump*,scalar_t__,struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC9 (struct btf_dump*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btf_dump*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct btf_dump*,char*,...) ; 
 int FUNC12 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC13 (struct btf_type const*) ; 
 int FUNC14 (struct btf_type const*) ; 
 char* FUNC15 (struct btf_dump*,int /*<<< orphan*/ ) ; 
 struct btf_param* FUNC16 (struct btf_type const*) ; 
 int FUNC17 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC19(struct btf_dump *d,
				     struct id_stack *decls,
				     const char *fname, int lvl)
{
	/*
	 * last_was_ptr is used to determine if we need to separate pointer
	 * asterisk (*) from previous part of type signature with space, so
	 * that we get `int ***`, instead of `int * * *`. We default to true
	 * for cases where we have single pointer in a chain. E.g., in ptr ->
	 * func_proto case. func_proto will start a new emit_type_chain call
	 * with just ptr, which should be emitted as (*) or (*<fname>), so we
	 * don't want to prepend space for that last pointer.
	 */
	bool last_was_ptr = true;
	const struct btf_type *t;
	const char *name;
	__u16 kind;
	__u32 id;

	while (decls->cnt) {
		id = decls->ids[--decls->cnt];
		if (id == 0) {
			/* VOID is a special snowflake */
			FUNC5(d, decls);
			FUNC11(d, "void");
			last_was_ptr = false;
			continue;
		}

		t = FUNC0(d->btf, id);
		kind = FUNC14(t);

		switch (kind) {
		case BTF_KIND_INT:
			FUNC5(d, decls);
			name = FUNC15(d, t->name_off);
			FUNC11(d, "%s", name);
			break;
		case BTF_KIND_STRUCT:
		case BTF_KIND_UNION:
			FUNC5(d, decls);
			/* inline anonymous struct/union */
			if (t->name_off == 0)
				FUNC7(d, id, t, lvl);
			else
				FUNC8(d, id, t);
			break;
		case BTF_KIND_ENUM:
			FUNC5(d, decls);
			/* inline anonymous enum */
			if (t->name_off == 0)
				FUNC2(d, id, t, lvl);
			else
				FUNC3(d, id, t);
			break;
		case BTF_KIND_FWD:
			FUNC5(d, decls);
			FUNC4(d, id, t);
			break;
		case BTF_KIND_TYPEDEF:
			FUNC5(d, decls);
			FUNC11(d, "%s", FUNC10(d, id));
			break;
		case BTF_KIND_PTR:
			FUNC11(d, "%s", last_was_ptr ? "*" : " *");
			break;
		case BTF_KIND_VOLATILE:
			FUNC11(d, " volatile");
			break;
		case BTF_KIND_CONST:
			FUNC11(d, " const");
			break;
		case BTF_KIND_RESTRICT:
			FUNC11(d, " restrict");
			break;
		case BTF_KIND_ARRAY: {
			const struct btf_array *a = FUNC1(t);
			const struct btf_type *next_t;
			__u32 next_id;
			bool multidim;
			/*
			 * GCC has a bug
			 * (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=8354)
			 * which causes it to emit extra const/volatile
			 * modifiers for an array, if array's element type has
			 * const/volatile modifiers. Clang doesn't do that.
			 * In general, it doesn't seem very meaningful to have
			 * a const/volatile modifier for array, so we are
			 * going to silently skip them here.
			 */
			while (decls->cnt) {
				next_id = decls->ids[decls->cnt - 1];
				next_t = FUNC0(d->btf, next_id);
				if (FUNC13(next_t))
					decls->cnt--;
				else
					break;
			}

			if (decls->cnt == 0) {
				FUNC6(d, fname, last_was_ptr);
				FUNC11(d, "[%u]", a->nelems);
				return;
			}

			next_id = decls->ids[decls->cnt - 1];
			next_t = FUNC0(d->btf, next_id);
			multidim = FUNC12(next_t);
			/* we need space if we have named non-pointer */
			if (fname[0] && !last_was_ptr)
				FUNC11(d, " ");
			/* no parentheses for multi-dimensional array */
			if (!multidim)
				FUNC11(d, "(");
			FUNC19(d, decls, fname, lvl);
			if (!multidim)
				FUNC11(d, ")");
			FUNC11(d, "[%u]", a->nelems);
			return;
		}
		case BTF_KIND_FUNC_PROTO: {
			const struct btf_param *p = FUNC16(t);
			__u16 vlen = FUNC17(t);
			int i;

			FUNC5(d, decls);
			if (decls->cnt) {
				FUNC11(d, " (");
				FUNC19(d, decls, fname, lvl);
				FUNC11(d, ")");
			} else {
				FUNC6(d, fname, last_was_ptr);
			}
			FUNC11(d, "(");
			/*
			 * Clang for BPF target generates func_proto with no
			 * args as a func_proto with a single void arg (e.g.,
			 * `int (*f)(void)` vs just `int (*f)()`). We are
			 * going to pretend there are no args for such case.
			 */
			if (vlen == 1 && p->type == 0) {
				FUNC11(d, ")");
				return;
			}

			for (i = 0; i < vlen; i++, p++) {
				if (i > 0)
					FUNC11(d, ", ");

				/* last arg of type void is vararg */
				if (i == vlen - 1 && p->type == 0) {
					FUNC11(d, "...");
					break;
				}

				name = FUNC15(d, p->name_off);
				FUNC9(d, p->type, name, lvl);
			}

			FUNC11(d, ")");
			return;
		}
		default:
			FUNC18("unexpected type in decl chain, kind:%u, id:[%u]\n",
				   kind, id);
			return;
		}

		last_was_ptr = kind == BTF_KIND_PTR;
	}

	FUNC6(d, fname, last_was_ptr);
}