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
struct btf_type {int dummy; } ;
struct btf_member {int type; scalar_t__ name_off; } ;
struct btf_array {int type; int nelems; } ;
struct btf {int dummy; } ;
struct bpf_core_spec {int raw_len; int* raw_spec; size_t len; int offset; TYPE_1__* spec; struct btf const* btf; } ;
typedef  int __u32 ;
typedef  int __s64 ;
struct TYPE_2__ {int type_id; int idx; char const* name; } ;

/* Variables and functions */
 int BPF_CORE_SPEC_MAX_LEN ; 
 int E2BIG ; 
 int EINVAL ; 
 char* FUNC0 (struct btf const*,scalar_t__) ; 
 int FUNC1 (struct btf const*,int) ; 
 struct btf_array* FUNC2 (struct btf_type const*) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_type const*) ; 
 int FUNC6 (struct btf_type const*,int) ; 
 scalar_t__ FUNC7 (struct btf_type const*,int) ; 
 struct btf_member* FUNC8 (struct btf_type const*) ; 
 int FUNC9 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_core_spec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char const*,int,int,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC12 (struct btf const*,int,int*) ; 
 int FUNC13 (char const*,char*,int*,int*) ; 
 scalar_t__ FUNC14 (char const*) ; 

__attribute__((used)) static int FUNC15(const struct btf *btf,
			       __u32 type_id,
			       const char *spec_str,
			       struct bpf_core_spec *spec)
{
	int access_idx, parsed_len, i;
	const struct btf_type *t;
	const char *name;
	__u32 id;
	__s64 sz;

	if (FUNC14(spec_str) || *spec_str == ':')
		return -EINVAL;

	FUNC10(spec, 0, sizeof(*spec));
	spec->btf = btf;

	/* parse spec_str="0:1:2:3:4" into array raw_spec=[0, 1, 2, 3, 4] */
	while (*spec_str) {
		if (*spec_str == ':')
			++spec_str;
		if (FUNC13(spec_str, "%d%n", &access_idx, &parsed_len) != 1)
			return -EINVAL;
		if (spec->raw_len == BPF_CORE_SPEC_MAX_LEN)
			return -E2BIG;
		spec_str += parsed_len;
		spec->raw_spec[spec->raw_len++] = access_idx;
	}

	if (spec->raw_len == 0)
		return -EINVAL;

	/* first spec value is always reloc type array index */
	t = FUNC12(btf, type_id, &id);
	if (!t)
		return -EINVAL;

	access_idx = spec->raw_spec[0];
	spec->spec[0].type_id = id;
	spec->spec[0].idx = access_idx;
	spec->len++;

	sz = FUNC1(btf, id);
	if (sz < 0)
		return sz;
	spec->offset = access_idx * sz;

	for (i = 1; i < spec->raw_len; i++) {
		t = FUNC12(btf, id, &id);
		if (!t)
			return -EINVAL;

		access_idx = spec->raw_spec[i];

		if (FUNC4(t)) {
			const struct btf_member *m;
			__u32 offset;

			if (access_idx >= FUNC9(t))
				return -EINVAL;
			if (FUNC7(t, access_idx))
				return -EINVAL;

			offset = FUNC6(t, access_idx);
			if (offset % 8)
				return -EINVAL;
			spec->offset += offset / 8;

			m = FUNC8(t) + access_idx;
			if (m->name_off) {
				name = FUNC0(btf, m->name_off);
				if (FUNC14(name))
					return -EINVAL;

				spec->spec[spec->len].type_id = id;
				spec->spec[spec->len].idx = access_idx;
				spec->spec[spec->len].name = name;
				spec->len++;
			}

			id = m->type;
		} else if (FUNC3(t)) {
			const struct btf_array *a = FUNC2(t);

			t = FUNC12(btf, a->type, &id);
			if (!t || access_idx >= a->nelems)
				return -EINVAL;

			spec->spec[spec->len].type_id = id;
			spec->spec[spec->len].idx = access_idx;
			spec->len++;

			sz = FUNC1(btf, id);
			if (sz < 0)
				return sz;
			spec->offset += access_idx * sz;
		} else {
			FUNC11("relo for [%u] %s (at idx %d) captures type [%d] of unexpected kind %d\n",
				   type_id, spec_str, i, id, FUNC5(t));
			return -EINVAL;
		}
	}

	return 0;
}