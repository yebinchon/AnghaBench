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
struct btf_type {int dummy; } ;
struct btf_member {int type; int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;
struct bpf_core_spec {scalar_t__ raw_len; int offset; int* raw_spec; int /*<<< orphan*/  len; struct bpf_core_accessor* spec; } ;
struct bpf_core_accessor {int type_id; int idx; char const* name; } ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ BPF_CORE_SPEC_MAX_LEN ; 
 int E2BIG ; 
 int EINVAL ; 
 int FUNC0 (struct btf const*,int,struct btf const*,int) ; 
 char* FUNC1 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC2 (struct btf const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 
 int FUNC4 (struct btf_type const*,int) ; 
 scalar_t__ FUNC5 (struct btf_type const*,int) ; 
 struct btf_member* FUNC6 (struct btf_type const*) ; 
 int FUNC7 (struct btf_type const*) ; 
 struct btf_type* FUNC8 (struct btf const*,int,int*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 

__attribute__((used)) static int FUNC11(const struct btf *local_btf,
				 const struct bpf_core_accessor *local_acc,
				 const struct btf *targ_btf,
				 __u32 targ_id,
				 struct bpf_core_spec *spec,
				 __u32 *next_targ_id)
{
	const struct btf_type *local_type, *targ_type;
	const struct btf_member *local_member, *m;
	const char *local_name, *targ_name;
	__u32 local_id;
	int i, n, found;

	targ_type = FUNC8(targ_btf, targ_id, &targ_id);
	if (!targ_type)
		return -EINVAL;
	if (!FUNC3(targ_type))
		return 0;

	local_id = local_acc->type_id;
	local_type = FUNC2(local_btf, local_id);
	local_member = FUNC6(local_type) + local_acc->idx;
	local_name = FUNC1(local_btf, local_member->name_off);

	n = FUNC7(targ_type);
	m = FUNC6(targ_type);
	for (i = 0; i < n; i++, m++) {
		__u32 offset;

		/* bitfield relocations not supported */
		if (FUNC5(targ_type, i))
			continue;
		offset = FUNC4(targ_type, i);
		if (offset % 8)
			continue;

		/* too deep struct/union/array nesting */
		if (spec->raw_len == BPF_CORE_SPEC_MAX_LEN)
			return -E2BIG;

		/* speculate this member will be the good one */
		spec->offset += offset / 8;
		spec->raw_spec[spec->raw_len++] = i;

		targ_name = FUNC1(targ_btf, m->name_off);
		if (FUNC9(targ_name)) {
			/* embedded struct/union, we need to go deeper */
			found = FUNC11(local_btf, local_acc,
						      targ_btf, m->type,
						      spec, next_targ_id);
			if (found) /* either found or error */
				return found;
		} else if (FUNC10(local_name, targ_name) == 0) {
			/* matching named field */
			struct bpf_core_accessor *targ_acc;

			targ_acc = &spec->spec[spec->len++];
			targ_acc->type_id = targ_id;
			targ_acc->idx = i;
			targ_acc->name = targ_name;

			*next_targ_id = m->type;
			found = FUNC0(local_btf,
							   local_member->type,
							   targ_btf, m->type);
			if (!found)
				spec->len--; /* pop accessor */
			return found;
		}
		/* member turned out not to be what we looked for */
		spec->offset -= offset / 8;
		spec->raw_len--;
	}

	return 0;
}