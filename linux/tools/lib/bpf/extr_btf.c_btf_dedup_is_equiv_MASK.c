#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btf_type {scalar_t__ name_off; size_t type; int /*<<< orphan*/  info; } ;
struct btf_param {size_t type; } ;
struct btf_member {size_t type; } ;
struct TYPE_4__ {scalar_t__ dont_resolve_fwds; } ;
struct btf_dedup {size_t* hypot_map; TYPE_2__ opts; TYPE_1__* btf; } ;
struct btf_array {size_t index_type; size_t type; } ;
typedef  size_t __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_3__ {struct btf_type** types; } ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 140 
#define  BTF_KIND_CONST 139 
#define  BTF_KIND_ENUM 138 
#define  BTF_KIND_FUNC 137 
#define  BTF_KIND_FUNC_PROTO 136 
#define  BTF_KIND_FWD 135 
#define  BTF_KIND_INT 134 
#define  BTF_KIND_PTR 133 
#define  BTF_KIND_RESTRICT 132 
#define  BTF_KIND_STRUCT 131 
#define  BTF_KIND_TYPEDEF 130 
#define  BTF_KIND_UNION 129 
#define  BTF_KIND_VOLATILE 128 
 size_t BTF_MAX_NR_TYPES ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct btf_array* FUNC0 (struct btf_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type*,struct btf_type*) ; 
 int FUNC2 (struct btf_type*,struct btf_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type*,struct btf_type*) ; 
 scalar_t__ FUNC4 (struct btf_dedup*,size_t,size_t) ; 
 int FUNC5 (struct btf_type*,struct btf_type*) ; 
 int FUNC6 (struct btf_type*,struct btf_type*) ; 
 int FUNC7 (struct btf_type*,struct btf_type*) ; 
 scalar_t__ FUNC8 (struct btf_type*) ; 
 scalar_t__ FUNC9 (struct btf_type*) ; 
 struct btf_member* FUNC10 (struct btf_type*) ; 
 struct btf_param* FUNC11 (struct btf_type*) ; 
 int /*<<< orphan*/  FUNC12 (struct btf_type*,struct btf_type*) ; 
 scalar_t__ FUNC13 (struct btf_type*) ; 
 size_t FUNC14 (struct btf_dedup*,size_t) ; 
 scalar_t__ FUNC15 (struct btf_dedup*,size_t) ; 

__attribute__((used)) static int FUNC16(struct btf_dedup *d, __u32 cand_id,
			      __u32 canon_id)
{
	struct btf_type *cand_type;
	struct btf_type *canon_type;
	__u32 hypot_type_id;
	__u16 cand_kind;
	__u16 canon_kind;
	int i, eq;

	/* if both resolve to the same canonical, they must be equivalent */
	if (FUNC15(d, cand_id) == FUNC15(d, canon_id))
		return 1;

	canon_id = FUNC14(d, canon_id);

	hypot_type_id = d->hypot_map[canon_id];
	if (hypot_type_id <= BTF_MAX_NR_TYPES)
		return hypot_type_id == cand_id;

	if (FUNC4(d, canon_id, cand_id))
		return -ENOMEM;

	cand_type = d->btf->types[cand_id];
	canon_type = d->btf->types[canon_id];
	cand_kind = FUNC9(cand_type);
	canon_kind = FUNC9(canon_type);

	if (cand_type->name_off != canon_type->name_off)
		return 0;

	/* FWD <--> STRUCT/UNION equivalence check, if enabled */
	if (!d->opts.dont_resolve_fwds
	    && (cand_kind == BTF_KIND_FWD || canon_kind == BTF_KIND_FWD)
	    && cand_kind != canon_kind) {
		__u16 real_kind;
		__u16 fwd_kind;

		if (cand_kind == BTF_KIND_FWD) {
			real_kind = canon_kind;
			fwd_kind = FUNC8(cand_type);
		} else {
			real_kind = cand_kind;
			fwd_kind = FUNC8(canon_type);
		}
		return fwd_kind == real_kind;
	}

	if (cand_kind != canon_kind)
		return 0;

	switch (cand_kind) {
	case BTF_KIND_INT:
		return FUNC7(cand_type, canon_type);

	case BTF_KIND_ENUM:
		if (d->opts.dont_resolve_fwds)
			return FUNC6(cand_type, canon_type);
		else
			return FUNC2(cand_type, canon_type);

	case BTF_KIND_FWD:
		return FUNC5(cand_type, canon_type);

	case BTF_KIND_CONST:
	case BTF_KIND_VOLATILE:
	case BTF_KIND_RESTRICT:
	case BTF_KIND_PTR:
	case BTF_KIND_TYPEDEF:
	case BTF_KIND_FUNC:
		if (cand_type->info != canon_type->info)
			return 0;
		return FUNC16(d, cand_type->type, canon_type->type);

	case BTF_KIND_ARRAY: {
		const struct btf_array *cand_arr, *canon_arr;

		if (!FUNC1(cand_type, canon_type))
			return 0;
		cand_arr = FUNC0(cand_type);
		canon_arr = FUNC0(canon_type);
		eq = FUNC16(d,
			cand_arr->index_type, canon_arr->index_type);
		if (eq <= 0)
			return eq;
		return FUNC16(d, cand_arr->type, canon_arr->type);
	}

	case BTF_KIND_STRUCT:
	case BTF_KIND_UNION: {
		const struct btf_member *cand_m, *canon_m;
		__u16 vlen;

		if (!FUNC12(cand_type, canon_type))
			return 0;
		vlen = FUNC13(cand_type);
		cand_m = FUNC10(cand_type);
		canon_m = FUNC10(canon_type);
		for (i = 0; i < vlen; i++) {
			eq = FUNC16(d, cand_m->type, canon_m->type);
			if (eq <= 0)
				return eq;
			cand_m++;
			canon_m++;
		}

		return 1;
	}

	case BTF_KIND_FUNC_PROTO: {
		const struct btf_param *cand_p, *canon_p;
		__u16 vlen;

		if (!FUNC3(cand_type, canon_type))
			return 0;
		eq = FUNC16(d, cand_type->type, canon_type->type);
		if (eq <= 0)
			return eq;
		vlen = FUNC13(cand_type);
		cand_p = FUNC11(cand_type);
		canon_p = FUNC11(canon_type);
		for (i = 0; i < vlen; i++) {
			eq = FUNC16(d, cand_p->type, canon_p->type);
			if (eq <= 0)
				return eq;
			cand_p++;
			canon_p++;
		}
		return 1;
	}

	default:
		return -EINVAL;
	}
	return 0;
}