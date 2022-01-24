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
struct rhashtable {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct bucket_table {size_t size; int /*<<< orphan*/ * buckets; int /*<<< orphan*/  hash_rnd; int /*<<< orphan*/  walkers; int /*<<< orphan*/  rcu; int /*<<< orphan*/  dep_map; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  buckets ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct bucket_table* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,struct lock_class_key*,int /*<<< orphan*/ ) ; 
 struct bucket_table* FUNC5 (struct rhashtable*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bucket_table*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static struct bucket_table *FUNC8(struct rhashtable *ht,
					       size_t nbuckets,
					       gfp_t gfp)
{
	struct bucket_table *tbl = NULL;
	size_t size;
	int i;
	static struct lock_class_key __key;

	tbl = FUNC3(FUNC7(tbl, buckets, nbuckets), gfp);

	size = nbuckets;

	if (tbl == NULL && (gfp & ~__GFP_NOFAIL) != GFP_KERNEL) {
		tbl = FUNC5(ht, nbuckets, gfp);
		nbuckets = 0;
	}

	if (tbl == NULL)
		return NULL;

	FUNC4(&tbl->dep_map, "rhashtable_bucket", &__key, 0);

	tbl->size = size;

	FUNC6(&tbl->rcu);
	FUNC0(&tbl->walkers);

	tbl->hash_rnd = FUNC2();

	for (i = 0; i < nbuckets; i++)
		FUNC1(tbl->buckets[i]);

	return tbl;
}