#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rhashtable_params {int /*<<< orphan*/  hashfn; scalar_t__ max_size; scalar_t__ min_size; int /*<<< orphan*/  obj_cmpfn; scalar_t__ obj_hashfn; int /*<<< orphan*/  key_len; } ;
struct TYPE_3__ {int max_size; int key_len; void* min_size; int /*<<< orphan*/  hashfn; } ;
struct rhashtable {unsigned int max_elems; int key_len; int /*<<< orphan*/  run_work; int /*<<< orphan*/  tbl; int /*<<< orphan*/  nelems; TYPE_1__ p; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; } ;
struct bucket_table {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bucket_table*) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bucket_table* FUNC3 (struct rhashtable*,size_t,int) ; 
 int /*<<< orphan*/  jhash ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct rhashtable_params const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rhashtable*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rhashtable_jhash2 ; 
 int /*<<< orphan*/  rht_deferred_worker ; 
 int FUNC8 (scalar_t__) ; 
 size_t FUNC9 (TYPE_1__*) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u16 ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct rhashtable *ht,
		    const struct rhashtable_params *params)
{
	struct bucket_table *tbl;
	size_t size;

	if ((!params->key_len && !params->obj_hashfn) ||
	    (params->obj_hashfn && !params->obj_cmpfn))
		return -EINVAL;

	FUNC6(ht, 0, sizeof(*ht));
	FUNC7(&ht->mutex);
	FUNC11(&ht->lock);
	FUNC5(&ht->p, params, sizeof(*params));

	if (params->min_size)
		ht->p.min_size = FUNC10(params->min_size);

	/* Cap total entries at 2^31 to avoid nelems overflow. */
	ht->max_elems = 1u << 31;

	if (params->max_size) {
		ht->p.max_size = FUNC8(params->max_size);
		if (ht->p.max_size < ht->max_elems / 2)
			ht->max_elems = ht->p.max_size * 2;
	}

	ht->p.min_size = FUNC4(u16, ht->p.min_size, HASH_MIN_SIZE);

	size = FUNC9(&ht->p);

	ht->key_len = ht->p.key_len;
	if (!params->hashfn) {
		ht->p.hashfn = jhash;

		if (!(ht->key_len & (sizeof(u32) - 1))) {
			ht->key_len /= sizeof(u32);
			ht->p.hashfn = rhashtable_jhash2;
		}
	}

	/*
	 * This is api initialization and thus we need to guarantee the
	 * initial rhashtable allocation. Upon failure, retry with the
	 * smallest possible size with __GFP_NOFAIL semantics.
	 */
	tbl = FUNC3(ht, size, GFP_KERNEL);
	if (FUNC12(tbl == NULL)) {
		size = FUNC4(u16, ht->p.min_size, HASH_MIN_SIZE);
		tbl = FUNC3(ht, size, GFP_KERNEL | __GFP_NOFAIL);
	}

	FUNC2(&ht->nelems, 0);

	FUNC1(ht->tbl, tbl);

	FUNC0(&ht->run_work, rht_deferred_worker);

	return 0;
}