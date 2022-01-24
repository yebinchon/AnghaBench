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
struct btf_dedup {int hypot_cnt; size_t* hypot_list; size_t* hypot_map; size_t* map; TYPE_1__* btf; } ;
typedef  size_t __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * types; } ;

/* Variables and functions */
 scalar_t__ BTF_KIND_FWD ; 
 scalar_t__ BTF_KIND_STRUCT ; 
 scalar_t__ BTF_KIND_UNION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct btf_dedup*,size_t) ; 
 size_t FUNC2 (struct btf_dedup*,size_t) ; 

__attribute__((used)) static void FUNC3(struct btf_dedup *d)
{
	__u32 cand_type_id, targ_type_id;
	__u16 t_kind, c_kind;
	__u32 t_id, c_id;
	int i;

	for (i = 0; i < d->hypot_cnt; i++) {
		cand_type_id = d->hypot_list[i];
		targ_type_id = d->hypot_map[cand_type_id];
		t_id = FUNC2(d, targ_type_id);
		c_id = FUNC2(d, cand_type_id);
		t_kind = FUNC0(d->btf->types[t_id]);
		c_kind = FUNC0(d->btf->types[c_id]);
		/*
		 * Resolve FWD into STRUCT/UNION.
		 * It's ok to resolve FWD into STRUCT/UNION that's not yet
		 * mapped to canonical representative (as opposed to
		 * STRUCT/UNION <--> STRUCT/UNION mapping logic below), because
		 * eventually that struct is going to be mapped and all resolved
		 * FWDs will automatically resolve to correct canonical
		 * representative. This will happen before ref type deduping,
		 * which critically depends on stability of these mapping. This
		 * stability is not a requirement for STRUCT/UNION equivalence
		 * checks, though.
		 */
		if (t_kind != BTF_KIND_FWD && c_kind == BTF_KIND_FWD)
			d->map[c_id] = t_id;
		else if (t_kind == BTF_KIND_FWD && c_kind != BTF_KIND_FWD)
			d->map[t_id] = c_id;

		if ((t_kind == BTF_KIND_STRUCT || t_kind == BTF_KIND_UNION) &&
		    c_kind != BTF_KIND_FWD &&
		    FUNC1(d, c_id) &&
		    !FUNC1(d, t_id)) {
			/*
			 * as a perf optimization, we can map struct/union
			 * that's part of type graph we just verified for
			 * equivalence. We can do that for struct/union that has
			 * canonical representative only, though.
			 */
			d->map[t_id] = c_id;
		}
	}
}