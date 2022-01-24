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
struct btf_ext {int dummy; } ;
struct btf_dedup_opts {int dedup_table_size; scalar_t__ dont_resolve_fwds; } ;
struct TYPE_2__ {int dont_resolve_fwds; } ;
struct btf_dedup {int* map; void** hypot_map; struct btf* btf; int /*<<< orphan*/ * dedup_table; struct btf_ext* btf_ext; TYPE_1__ opts; } ;
struct btf {int nr_types; struct btf_type** types; } ;
typedef  int /*<<< orphan*/  hashmap_hash_fn ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 void* BTF_UNPROCESSED_ID ; 
 int ENOMEM ; 
 struct btf_dedup* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btf_dedup_collision_hash_fn ; 
 int /*<<< orphan*/  btf_dedup_equal_fn ; 
 int /*<<< orphan*/  FUNC3 (struct btf_dedup*) ; 
 int /*<<< orphan*/  btf_dedup_identity_hash_fn ; 
 scalar_t__ FUNC4 (struct btf_type*) ; 
 scalar_t__ FUNC5 (struct btf_type*) ; 
 struct btf_dedup* FUNC6 (int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 

__attribute__((used)) static struct btf_dedup *FUNC9(struct btf *btf, struct btf_ext *btf_ext,
				       const struct btf_dedup_opts *opts)
{
	struct btf_dedup *d = FUNC6(1, sizeof(struct btf_dedup));
	hashmap_hash_fn hash_fn = btf_dedup_identity_hash_fn;
	int i, err = 0;

	if (!d)
		return FUNC0(-ENOMEM);

	d->opts.dont_resolve_fwds = opts && opts->dont_resolve_fwds;
	/* dedup_table_size is now used only to force collisions in tests */
	if (opts && opts->dedup_table_size == 1)
		hash_fn = btf_dedup_collision_hash_fn;

	d->btf = btf;
	d->btf_ext = btf_ext;

	d->dedup_table = FUNC7(hash_fn, btf_dedup_equal_fn, NULL);
	if (FUNC1(d->dedup_table)) {
		err = FUNC2(d->dedup_table);
		d->dedup_table = NULL;
		goto done;
	}

	d->map = FUNC8(sizeof(__u32) * (1 + btf->nr_types));
	if (!d->map) {
		err = -ENOMEM;
		goto done;
	}
	/* special BTF "void" type is made canonical immediately */
	d->map[0] = 0;
	for (i = 1; i <= btf->nr_types; i++) {
		struct btf_type *t = d->btf->types[i];

		/* VAR and DATASEC are never deduped and are self-canonical */
		if (FUNC5(t) || FUNC4(t))
			d->map[i] = i;
		else
			d->map[i] = BTF_UNPROCESSED_ID;
	}

	d->hypot_map = FUNC8(sizeof(__u32) * (1 + btf->nr_types));
	if (!d->hypot_map) {
		err = -ENOMEM;
		goto done;
	}
	for (i = 0; i <= btf->nr_types; i++)
		d->hypot_map[i] = BTF_UNPROCESSED_ID;

done:
	if (err) {
		FUNC3(d);
		return FUNC0(err);
	}

	return d;
}