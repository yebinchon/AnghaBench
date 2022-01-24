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
struct btf_var_secinfo {int type; int offset; int size; } ;
struct btf_var {int /*<<< orphan*/  linkage; } ;
struct btf_type {int size; int type; int /*<<< orphan*/  info; int /*<<< orphan*/  name_off; } ;
struct btf_param {int type; int /*<<< orphan*/  name_off; } ;
struct btf_member {int offset; int type; int /*<<< orphan*/  name_off; } ;
struct btf_enum {int val; int /*<<< orphan*/  name_off; } ;
struct btf_array {int type; int index_type; int nelems; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  json_writer_t ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
#define  BTF_KIND_ARRAY 142 
#define  BTF_KIND_CONST 141 
#define  BTF_KIND_DATASEC 140 
#define  BTF_KIND_ENUM 139 
#define  BTF_KIND_FUNC 138 
#define  BTF_KIND_FUNC_PROTO 137 
#define  BTF_KIND_FWD 136 
#define  BTF_KIND_INT 135 
 int BTF_KIND_MAX ; 
#define  BTF_KIND_PTR 134 
#define  BTF_KIND_RESTRICT 133 
#define  BTF_KIND_STRUCT 132 
#define  BTF_KIND_TYPEDEF 131 
#define  BTF_KIND_UNION 130 
 int BTF_KIND_UNKN ; 
#define  BTF_KIND_VAR 129 
#define  BTF_KIND_VOLATILE 128 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char** btf_kind_str ; 
 char* FUNC9 (struct btf const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/ * json_wtr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

__attribute__((used)) static int FUNC19(const struct btf *btf, __u32 id,
			 const struct btf_type *t)
{
	json_writer_t *w = json_wtr;
	int kind, safe_kind;

	kind = FUNC1(t->info);
	safe_kind = kind <= BTF_KIND_MAX ? kind : BTF_KIND_UNKN;

	if (json_output) {
		FUNC15(w);
		FUNC17(w, "id", id);
		FUNC16(w, "kind", btf_kind_str[safe_kind]);
		FUNC16(w, "name", FUNC9(btf, t->name_off));
	} else {
		FUNC18("[%u] %s '%s'", id, btf_kind_str[safe_kind],
		       FUNC9(btf, t->name_off));
	}

	switch (FUNC1(t->info)) {
	case BTF_KIND_INT: {
		__u32 v = *(__u32 *)(t + 1);
		const char *enc;

		enc = FUNC8(FUNC4(v));

		if (json_output) {
			FUNC17(w, "size", t->size);
			FUNC17(w, "bits_offset", FUNC5(v));
			FUNC17(w, "nr_bits", FUNC3(v));
			FUNC16(w, "encoding", enc);
		} else {
			FUNC18(" size=%u bits_offset=%u nr_bits=%u encoding=%s",
			       t->size, FUNC5(v), FUNC3(v),
			       enc);
		}
		break;
	}
	case BTF_KIND_PTR:
	case BTF_KIND_CONST:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_RESTRICT:
	case BTF_KIND_TYPEDEF:
		if (json_output)
			FUNC17(w, "type_id", t->type);
		else
			FUNC18(" type_id=%u", t->type);
		break;
	case BTF_KIND_ARRAY: {
		const struct btf_array *arr = (const void *)(t + 1);

		if (json_output) {
			FUNC17(w, "type_id", arr->type);
			FUNC17(w, "index_type_id", arr->index_type);
			FUNC17(w, "nr_elems", arr->nelems);
		} else {
			FUNC18(" type_id=%u index_type_id=%u nr_elems=%u",
			       arr->type, arr->index_type, arr->nelems);
		}
		break;
	}
	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION: {
		const struct btf_member *m = (const void *)(t + 1);
		__u16 vlen = FUNC2(t->info);
		int i;

		if (json_output) {
			FUNC17(w, "size", t->size);
			FUNC17(w, "vlen", vlen);
			FUNC13(w, "members");
			FUNC14(w);
		} else {
			FUNC18(" size=%u vlen=%u", t->size, vlen);
		}
		for (i = 0; i < vlen; i++, m++) {
			const char *name = FUNC9(btf, m->name_off);
			__u32 bit_off, bit_sz;

			if (FUNC0(t->info)) {
				bit_off = FUNC7(m->offset);
				bit_sz = FUNC6(m->offset);
			} else {
				bit_off = m->offset;
				bit_sz = 0;
			}

			if (json_output) {
				FUNC15(w);
				FUNC16(w, "name", name);
				FUNC17(w, "type_id", m->type);
				FUNC17(w, "bits_offset", bit_off);
				if (bit_sz) {
					FUNC17(w, "bitfield_size",
							 bit_sz);
				}
				FUNC12(w);
			} else {
				FUNC18("\n\t'%s' type_id=%u bits_offset=%u",
				       name, m->type, bit_off);
				if (bit_sz)
					FUNC18(" bitfield_size=%u", bit_sz);
			}
		}
		if (json_output)
			FUNC11(w);
		break;
	}
	case BTF_KIND_ENUM: {
		const struct btf_enum *v = (const void *)(t + 1);
		__u16 vlen = FUNC2(t->info);
		int i;

		if (json_output) {
			FUNC17(w, "size", t->size);
			FUNC17(w, "vlen", vlen);
			FUNC13(w, "values");
			FUNC14(w);
		} else {
			FUNC18(" size=%u vlen=%u", t->size, vlen);
		}
		for (i = 0; i < vlen; i++, v++) {
			const char *name = FUNC9(btf, v->name_off);

			if (json_output) {
				FUNC15(w);
				FUNC16(w, "name", name);
				FUNC17(w, "val", v->val);
				FUNC12(w);
			} else {
				FUNC18("\n\t'%s' val=%u", name, v->val);
			}
		}
		if (json_output)
			FUNC11(w);
		break;
	}
	case BTF_KIND_FWD: {
		const char *fwd_kind = FUNC0(t->info) ? "union"
							       : "struct";

		if (json_output)
			FUNC16(w, "fwd_kind", fwd_kind);
		else
			FUNC18(" fwd_kind=%s", fwd_kind);
		break;
	}
	case BTF_KIND_FUNC:
		if (json_output)
			FUNC17(w, "type_id", t->type);
		else
			FUNC18(" type_id=%u", t->type);
		break;
	case BTF_KIND_FUNC_PROTO: {
		const struct btf_param *p = (const void *)(t + 1);
		__u16 vlen = FUNC2(t->info);
		int i;

		if (json_output) {
			FUNC17(w, "ret_type_id", t->type);
			FUNC17(w, "vlen", vlen);
			FUNC13(w, "params");
			FUNC14(w);
		} else {
			FUNC18(" ret_type_id=%u vlen=%u", t->type, vlen);
		}
		for (i = 0; i < vlen; i++, p++) {
			const char *name = FUNC9(btf, p->name_off);

			if (json_output) {
				FUNC15(w);
				FUNC16(w, "name", name);
				FUNC17(w, "type_id", p->type);
				FUNC12(w);
			} else {
				FUNC18("\n\t'%s' type_id=%u", name, p->type);
			}
		}
		if (json_output)
			FUNC11(w);
		break;
	}
	case BTF_KIND_VAR: {
		const struct btf_var *v = (const void *)(t + 1);
		const char *linkage;

		linkage = FUNC10(v->linkage);

		if (json_output) {
			FUNC17(w, "type_id", t->type);
			FUNC16(w, "linkage", linkage);
		} else {
			FUNC18(" type_id=%u, linkage=%s", t->type, linkage);
		}
		break;
	}
	case BTF_KIND_DATASEC: {
		const struct btf_var_secinfo *v = (const void *)(t+1);
		__u16 vlen = FUNC2(t->info);
		int i;

		if (json_output) {
			FUNC17(w, "size", t->size);
			FUNC17(w, "vlen", vlen);
			FUNC13(w, "vars");
			FUNC14(w);
		} else {
			FUNC18(" size=%u vlen=%u", t->size, vlen);
		}
		for (i = 0; i < vlen; i++, v++) {
			if (json_output) {
				FUNC15(w);
				FUNC17(w, "type_id", v->type);
				FUNC17(w, "offset", v->offset);
				FUNC17(w, "size", v->size);
				FUNC12(w);
			} else {
				FUNC18("\n\ttype_id=%u offset=%u size=%u",
				       v->type, v->offset, v->size);
			}
		}
		if (json_output)
			FUNC11(w);
		break;
	}
	default:
		break;
	}

	if (json_output)
		FUNC12(json_wtr);
	else
		FUNC18("\n");

	return 0;
}